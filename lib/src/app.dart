import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weekly_challenge/src/providers/setting_provider.dart';
import 'package:weekly_challenge/src/views/record_view.dart';
import 'package:weekly_challenge/src/views/setting_view.dart';

import 'models/models.dart';
import 'views/home.dart';


class MyApp extends ConsumerWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final setting = ref.watch(settingProvider);
    return MaterialApp(
      restorationScopeId: 'app',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
      locale: setting.locale,
      onGenerateTitle: (BuildContext context) =>
      AppLocalizations.of(context)!.appTitle,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: setting.themeMode,
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case SettingView.routeName:
                return const SettingView();
              case RecordView.routeName:
                final json =
                routeSettings.arguments as Map<String, dynamic>;
                return RecordView(week: Record.fromJson(json).week);
              default:
                return const HomeView();
            }
          },
        );
      },
    );
  }
}
