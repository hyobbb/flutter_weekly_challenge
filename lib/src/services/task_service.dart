import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:weekly_challenge/src/utils/constants.dart';

import '../models/models.dart';

final taskServiceProvider = Provider((ref) => TaskService());

class TaskService {
  final Box _taskBox = Hive.box(taskBoxName);

  List<Task> getAllTask() {
    return _taskBox.values
        .map((e) => Task.fromJson(jsonDecode(e)))
        .toList();
  }

  Future<int> createTask(Task task) async {
    final id = await _taskBox.add(jsonEncode(task.toJson()));
    await _taskBox.put(id, jsonEncode(task.copyWith(id:id).toJson()));
    return id;
  }

  Future<void> updateTask(Task task) async {
    await _taskBox.put(task.id, jsonEncode(task.toJson()));
  }

  Future<void> removeTask(Task task) async {
    await _taskBox.delete(task.id);
  }
}
