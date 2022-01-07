import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:weekly_challenge/src/utils/constants.dart';

import '../models/models.dart';

final settingServiceProvider = Provider((ref) => SettingService());

class SettingService {
  final Box _settingBox = Hive.box(settingBoxName);

  AppSetting currentSetting() {
    final theme = _settingBox.get('theme');
    final locale = _settingBox.get('locale');
    return AppSetting(
      themeMode: _parseThemeValue(theme),
      locale: Locale(locale ?? 'es'),
    );
  }

  Future<void> updateTheme(ThemeMode mode) async {
    await _settingBox.put('theme', _parseTheme(mode));
  }

  Future<void> updateLocale(Locale locale) async {
    await _settingBox.put('locale', locale.languageCode);
  }

  ThemeMode _parseThemeValue(String? value) {
    switch (value) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      case 'system':
      default:
        return ThemeMode.system;
    }
  }

  String _parseTheme(ThemeMode theme) {
    switch (theme) {
      case ThemeMode.dark:
        return 'dark';
      case ThemeMode.light:
        return 'light';
      case ThemeMode.system:
      default:
        return 'system';
    }
  }
}
