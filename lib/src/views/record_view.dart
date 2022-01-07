import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weekly_challenge/src/components/app_bar.dart';
import 'package:weekly_challenge/src/components/tiles.dart';
import 'package:weekly_challenge/src/models/models.dart';
import 'package:weekly_challenge/src/providers/record_list_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weekly_challenge/src/utils/theme.dart';
import 'package:weekly_challenge/src/views/task_dialog.dart';

class RecordView extends ConsumerWidget {
  static const routeName = '/weekly_view';
  final Week week;

  const RecordView({
    required this.week,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final record = ref.watch(recordList).firstWhere((r) => r.week.id == week.id);
    final canEdit = week.endDate.isAfter(DateTime.now());
    List<Task> done = [];
    List<Task> pending = [];
    for (var element in record.tasks) {
      if (element.executed == element.target) {
        done.add(element);
      } else {
        pending.add(element);
      }
    }
    return Scaffold(
      appBar:
          CustomAppBar(title: 'Week ${week.order} of ${week.startDate.year}'),
      body: (record.tasks.isEmpty)
          ? const Center(
              child: EmptyMessage(),
            )
          : ListView(
              children: [
                ...pending.map((task) {
                  if (canEdit) {
                    return TaskTile(
                      task: task,
                      onTap: () {
                        ref.read(recordList.notifier).executeTask(
                              record: record,
                              task: task,
                            );
                      },
                    );
                  } else {
                    return TaskTileDisabled(task: task);
                  }
                }).toList(),
                if (pending.isEmpty) const CompleteMessage(),
                const Divider(),
                ...done.map((task) {
                  if (canEdit) {
                    return TaskTile(
                      task: task,
                      onTap: () {
                        ref.read(recordList.notifier).restoreTask(
                              record: record,
                              task: task,
                            );
                      },
                    );
                  } else {
                    return TaskTileDisabled(task: task);
                  }
                }).toList(),
              ],
            ),
      floatingActionButton: canEdit
          ? FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => showDialog(
                context: context,
                builder: (context) => const TaskDialog(),
              ),
            )
          : null,
    );
  }
}

class CompleteMessage extends StatelessWidget {
  const CompleteMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        AppLocalizations.of(context)!.completeMessage,
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: Theme.of(context).colorScheme.success),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class EmptyMessage extends StatelessWidget {
  const EmptyMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        AppLocalizations.of(context)!.emptyMessage,
        style: Theme.of(context)
            .textTheme
            .headline6!,
        textAlign: TextAlign.center,
      ),
    );
  }
}
