import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weekly_challenge/src/components/app_bar.dart';
import 'package:weekly_challenge/src/components/tiles.dart';
import 'package:weekly_challenge/src/providers/record_list_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weekly_challenge/src/views/record_view.dart';

class HistoryView extends ConsumerWidget {
  const HistoryView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final records = ref.watch(recordList);
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.historyTitle,
      ),
      body: ListView.builder(
        restorationId: 'historyView',
        itemCount: records.length,
        itemBuilder: (BuildContext context, int index) {
          final record = records[index];
          return HistoryTile(
            record: record,
            onTap: () {
              Navigator.restorablePushNamed(
                context,
                RecordView.routeName,
                arguments: record.week.toJson(),
              );
            },
          );
        },
      ),
    );
  }
}
