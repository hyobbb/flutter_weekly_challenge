import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weekly_challenge/src/components/app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weekly_challenge/src/components/tiles.dart';
import 'package:weekly_challenge/src/providers/setting_provider.dart';

class SettingView extends ConsumerWidget {
  static const routeName = '/settings';
  const SettingView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.settingTitle,
      ),
      body: ListView(
        children: [
          PopupMenuButton<ThemeMode>(
            onSelected: (ThemeMode result) {
              ref.read(settingProvider.notifier).setTheme(result);
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<ThemeMode>>[
              PopupMenuItem<ThemeMode>(
                value: ThemeMode.system,
                child: Text(AppLocalizations.of(context)!.systemTheme),
              ),
              PopupMenuItem<ThemeMode>(
                value: ThemeMode.dark,
                child: Text(AppLocalizations.of(context)!.darkTheme),
              ),
              PopupMenuItem<ThemeMode>(
                value: ThemeMode.light,
                child: Text(AppLocalizations.of(context)!.lightTheme),
              ),
            ],
            child: const ThemeTile()
          ),
          PopupMenuButton<Locale>(
              onSelected: (Locale result) {
                ref.read(settingProvider.notifier).setLocale(result);
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Locale>>[
                PopupMenuItem<Locale>(
                  value: const Locale('es'),
                  child: Text(AppLocalizations.of(context)!.spanish),
                ),
                PopupMenuItem<Locale>(
                  value: const Locale('en'),
                  child: Text(AppLocalizations.of(context)!.english),
                ),
              ],
              child: const LocaleTile()
          ),
        ],
      )
    );
  }
}
