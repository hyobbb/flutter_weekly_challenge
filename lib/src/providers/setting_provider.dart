import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weekly_challenge/src/models/models.dart';
import 'package:weekly_challenge/src/services/setting_service.dart';

final settingProvider = StateNotifierProvider<SettingProvider, AppSetting>((ref) {
  final service = ref.watch(settingServiceProvider);
  return SettingProvider(service);
});

class SettingProvider extends StateNotifier<AppSetting> {
  final SettingService service;

  SettingProvider(this.service)
      : super(service.currentSetting());

  Future<void> setTheme(ThemeMode mode) async {
    await service.updateTheme(mode);
    state = state.copyWith(themeMode: mode);
  }

  Future<void> setLocale(Locale locale) async {
    await service.updateLocale(locale);
    state = state.copyWith(locale: locale);
  }
}
