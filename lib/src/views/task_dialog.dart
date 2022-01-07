import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weekly_challenge/src/models/models.dart';
import 'package:weekly_challenge/src/providers/task_list_provider.dart';

class TaskDialog extends ConsumerStatefulWidget {
  final Task? task;

  const TaskDialog({
    this.task,
    Key? key,
  }) : super(key: key);

  @override
  _TaskDialogState createState() => _TaskDialogState();
}

class _TaskDialogState extends ConsumerState<TaskDialog> {
  final formKey = GlobalKey<FormState>();
  final textController = TextEditingController();
  int target = 1;

  @override
  void initState() {
    if (widget.task != null) {
      textController.text = widget.task!.text;
      target = widget.task!.target;
    }
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isEdit = widget.task != null;
    return AlertDialog(
      title: Text(
        isEdit
            ? AppLocalizations.of(context)!.editTaskTitle
            : AppLocalizations.of(context)!.createTaskTitle,
      ),
      content: Container(
        constraints: BoxConstraints(
          maxHeight: 200,
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: Column(
          children: [
            Form(
              key: formKey,
              child: TextFormField(
                controller: textController,
                autofocus: true,
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.taskHint,
                  border: InputBorder.none,
                ),
                maxLength: 50,
                textCapitalization: TextCapitalization.sentences,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppLocalizations.of(context)!.required;
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  padding: EdgeInsets.zero,
                  onPressed: target == 1
                      ? null
                      : () => setState(() {
                            target--;
                          }),
                ),
                Text(
                  target.toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  padding: EdgeInsets.zero,
                  onPressed: target == 7
                      ? null
                      : () => setState(() {
                            target++;
                          }),
                ),
                Text(AppLocalizations.of(context)!.perWeek),
              ],
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(AppLocalizations.of(context)!.cancel),
        ),
        TextButton(
          onPressed: () async {
            // save change
            if (!formKey.currentState!.validate()) {
              return;
            }

            final task = Task(
              id: widget.task?.id,
              text: textController.text,
              target: target,
            );

            if (widget.task != null) {
              await ref.read(taskList.notifier).edit(task);
            } else {
              await ref.read(taskList.notifier).add(task);
            }
            Navigator.pop(context);
          },
          child: Text(AppLocalizations.of(context)!.ok),
        ),
      ],
    );
  }
}
