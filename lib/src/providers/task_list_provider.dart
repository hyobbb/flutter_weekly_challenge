import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weekly_challenge/src/models/models.dart';
import 'package:weekly_challenge/src/services/task_service.dart';

final taskList = StateNotifierProvider<TaskListProvider, List<Task>>((ref) {
  final service = ref.watch(taskServiceProvider);
  return TaskListProvider(service);
});

class TaskListProvider extends StateNotifier<List<Task>> {
  final TaskService service;

  TaskListProvider(this.service)
      : super(service.getAllTask());

  Future<void> add (Task task) async {
    final id = await service.createTask(task);
    state = [...state, task.copyWith(id: id)];
  }

  Future<void> edit(Task task) async {
    await service.updateTask(task);
    state = state.map((e) => e.id == task.id ? task : e).toList();
  }

  Future<void> remove(Task task) async {
    await service.removeTask(task);
    state = state.where((t) => t.id != task.id).toList();
  }
}
