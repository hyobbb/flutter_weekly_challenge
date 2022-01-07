import 'package:flutter/material.dart';
import 'package:weekly_challenge/src/models/models.dart';
import 'package:weekly_challenge/src/utils/theme.dart';

import 'indicator.dart';

class RecordIcon extends StatelessWidget {
  final Record record;

  const RecordIcon({Key? key, required this.record}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Task> pending = [];
    for (var element in record.tasks) {
      if (element.executed != element.target) {
        pending.add(element);
      }
    }

    if (pending.isEmpty) {
      return Icon(
        Icons.check_circle_outline,
        color: Theme.of(context).colorScheme.success,
      );
    } else {
      if (record.week.endDate.isAfter(DateTime.now())) {
        return Icon(
          Icons.schedule,
          color: Theme.of(context).colorScheme.pending,
        );
      } else {
        return Icon(
          Icons.highlight_off,
          color: Theme.of(context).colorScheme.error,
        );
      }
    }
  }
}

class TaskIcon extends StatelessWidget {
  final Task task;

  const TaskIcon({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularIndicator(
      target: task.target,
      executed: task.executed,
      size: 40,
    );
  }
}
