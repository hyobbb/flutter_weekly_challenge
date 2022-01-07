import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weekly_challenge/src/models/models.dart';
import 'package:weekly_challenge/src/providers/task_list_provider.dart';
import 'package:weekly_challenge/src/services/record_service.dart';
import 'package:weekly_challenge/src/utils/functions.dart';

final syncRecord = FutureProvider<Record>((ref) async {
  final service = ref.watch(recordServiceProvider);

  // on task update current week's record should be updated as well
  final tasks = ref.watch(taskList);

  final currentRecords = service.getAllRecord();
  final currentWeek = whatWeekIsToday();
  Record syncedRecord;

  try {
    final current =
        currentRecords.firstWhere((r) => r.week.id == currentWeek.id);
    final updatedTask = tasks.map((task) {
      final currentState = current.tasks.firstWhere(
        (t) => t.id == task.id,
        orElse: () => task,
      );
      if (currentState.executed > task.target) {
        return task.copyWith(executed: task.target);
      }
      return task.copyWith(executed: currentState.executed);
    }).toList();

    syncedRecord = current.copyWith(tasks: updatedTask);
  } catch (e, _) {
    // generate record if not exists
    syncedRecord = Record(week: currentWeek, tasks: tasks);
  }
  await service.saveRecord(syncedRecord);
  ref.refresh(recordList);
  return syncedRecord;
});

final recordList =
    StateNotifierProvider<RecordListProvider, List<Record>>((ref) {
  final service = ref.watch(recordServiceProvider);
  return RecordListProvider(service);
});

class RecordListProvider extends StateNotifier<List<Record>> {
  final RecordService service;

  RecordListProvider(this.service) : super(service.getAllRecord());

  Future<void> _edit(Record record) async {
    await service.saveRecord(record);
    state = state.map((r) => r.week.id == record.week.id ? record : r).toList();
  }

  Future<void> remove(Record record) async {
    await service.removeRecord(record);
    state = state.where((r) => r.week.id != record.week.id).toList();
  }

  Future<void> executeTask({
    required Record record,
    required Task task,
  }) async {
    final updatedTask = record.tasks
        .map((t) => t.id == task.id ? t.copyWith(executed: t.executed + 1) : t)
        .toList();
    await _edit(record.copyWith(tasks: updatedTask));
  }

  Future<void> restoreTask({
    required Record record,
    required Task task,
  }) async {
    final updatedTask = record.tasks
        .map((t) => t.id == task.id ? t.copyWith(executed: 0) : t)
        .toList();
    await _edit(record.copyWith(tasks: updatedTask));
  }
}
