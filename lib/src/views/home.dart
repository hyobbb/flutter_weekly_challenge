import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weekly_challenge/src/providers/record_list_provider.dart';
import 'package:weekly_challenge/src/utils/constants.dart';
import 'package:weekly_challenge/src/views/history_view.dart';
import 'package:weekly_challenge/src/views/record_view.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    final future = ref.watch(syncRecord);
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: future.when(
        data: (record) {
          return Scaffold(
            body: TabBarView(
              children: [
                const HistoryView(),
                RecordView(week: record.week),
              ],
            ),
            bottomNavigationBar: Container(
              height: bottomNavigatorHeight,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: TabBar(
                tabs: [
                  Tab(text: AppLocalizations.of(context)!.menuHistory),
                  Tab(text: AppLocalizations.of(context)!.menuWeekly),
                ],
              ),
            ),
          );
        },
        error: (e, s) => Text(e.toString()),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
