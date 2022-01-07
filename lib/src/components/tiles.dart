import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weekly_challenge/src/components/icons.dart';
import 'package:weekly_challenge/src/models/models.dart';
import 'package:weekly_challenge/src/providers/setting_provider.dart';
import 'package:weekly_challenge/src/providers/task_list_provider.dart';
import 'package:weekly_challenge/src/utils/functions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weekly_challenge/src/views/task_dialog.dart';

class TaskTileDisabled extends StatelessWidget {
  final Task task;

  const TaskTileDisabled({
    required this.task,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      enabled: false,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 20.0,
      ),
      title: Text(task.text),
      subtitle: Text(
        task.target.toString() + AppLocalizations.of(context)!.perWeek,
      ),
      leading: TaskIcon(task: task),
    );
  }
}

class TaskTile extends ConsumerWidget {
  final Task task;
  final VoidCallback? onTap;

  const TaskTile({
    required this.task,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dismissible(
      key: Key(task.text),
      onDismissed: (direction) async {
        await ref.read(taskList.notifier).remove(task);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
            Text(AppLocalizations.of(context)!.taskRemoved),
          ),
        );
      },
      background: Container(color: Colors.red),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 20.0,
        ),
        title: Text(task.text),
        subtitle: Text(
          task.target.toString() + AppLocalizations.of(context)!.perWeek,
        ),
        leading: TaskIcon(task: task),
        onLongPress: () {
          showDialog(
            context: context,
            builder: (context) => TaskDialog(task: task),
          );
        },
        onTap: onTap,
      ),
    );
  }
}

class HistoryTile extends StatelessWidget {
  final Record record;
  final VoidCallback onTap;

  const HistoryTile({
    required this.record,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Week ${record.week.order}'),
      subtitle: Text(weekToString(record.week)),
      leading: RecordIcon(record: record),
      onTap: onTap,
    );
  }
}


class ThemeTile extends ConsumerWidget {
  const ThemeTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final setting = ref.watch(settingProvider);
    String subTitle = AppLocalizations.of(context)!.systemTheme;
    if (setting.themeMode == ThemeMode.dark) {
      subTitle = AppLocalizations.of(context)!.darkTheme;
    } else if(setting.themeMode == ThemeMode.light) {
      subTitle = AppLocalizations.of(context)!.lightTheme;
    }
    return ListTile(
      title: Text(AppLocalizations.of(context)!.theme,),
      subtitle: Text(subTitle),
    );
  }
}


class LocaleTile extends ConsumerWidget {
  const LocaleTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final setting = ref.watch(settingProvider);
    String subTitle = AppLocalizations.of(context)!.spanish;
    if (setting.locale.languageCode == 'en') {
      subTitle = AppLocalizations.of(context)!.english;
    }
    return ListTile(
      title: Text(AppLocalizations.of(context)!.locale,),
      subtitle: Text(subTitle),
    );
  }
}
