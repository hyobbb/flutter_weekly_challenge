import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

part 'models.g.dart';

@freezed
class AppSetting with _$AppSetting {
  const factory AppSetting({
    required ThemeMode themeMode,
    required Locale locale,
  }) = _AppSetting;
}

@freezed
class Record with _$Record {
  const factory Record({
    required Week week,
    required List<Task> tasks,
  }) = _Record;

  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
}

// task that repeats every week
@freezed
class Task with _$Task {
  @Assert('executed >= 0')
  @Assert('target >= executed')
  const factory Task({
    int? id,
    required String text,
    @Default(1) int target,
    @Default(0) int executed,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

@freezed
class Week with _$Week {
  const factory Week({
    required String id,
    required int order,
    @DateTimeConverter() required DateTime startDate,
    @DateTimeConverter() required DateTime endDate,
  }) = _Week;

  factory Week.fromJson(Map<String, dynamic> json) => _$WeekFromJson(json);
}

class DateTimeConverter
    implements JsonConverter<DateTime, Map<String, dynamic>> {
  const DateTimeConverter();

  @override
  DateTime fromJson(Map<String, dynamic> json) =>
      DateTime.fromMillisecondsSinceEpoch(json['dateTime']);

  @override
  Map<String, dynamic> toJson(DateTime object) => {
        'dateTime': object.millisecondsSinceEpoch,
      };
}
