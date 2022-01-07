import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:weekly_challenge/src/utils/constants.dart';
import 'package:weekly_challenge/src/utils/logger.dart';

import 'src/app.dart';

void main() async {
  await Hive.initFlutter();
  final t = await Hive.openBox(taskBoxName);
  final r = await Hive.openBox(recordBoxName);
  final s = await Hive.openBox(settingBoxName);
  // await t.clear();
  // await r.clear();
  // await s.clear();

  runApp(const ProviderScope(
    child: MyApp(),
    observers: [
      Logger(),
    ],
  ));
}
