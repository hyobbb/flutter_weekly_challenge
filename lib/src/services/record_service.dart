import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:weekly_challenge/src/utils/constants.dart';

import '../models/models.dart';

final recordServiceProvider = Provider((ref) => RecordService());

class RecordService {
  final Box _recordBox = Hive.box(recordBoxName);

  List<Record> getAllRecord() {
    return _recordBox.values
        .map((e) => Record.fromJson(jsonDecode(e)))
        .toList();
  }

  Future<void> saveRecord(Record record) async {
    await _recordBox.put(record.week.id, jsonEncode(record.toJson()));
  }

  Future<void> removeRecord(Record record) async {
    await _recordBox.delete(record.week.id);
  }
}
