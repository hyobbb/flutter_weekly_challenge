// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Record _$$_RecordFromJson(Map<String, dynamic> json) => _$_Record(
      week: Week.fromJson(json['week'] as Map<String, dynamic>),
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecordToJson(_$_Record instance) => <String, dynamic>{
      'week': instance.week,
      'tasks': instance.tasks,
    };

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      id: json['id'] as int?,
      text: json['text'] as String,
      target: json['target'] as int? ?? 1,
      executed: json['executed'] as int? ?? 0,
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'target': instance.target,
      'executed': instance.executed,
    };

_$_Week _$$_WeekFromJson(Map<String, dynamic> json) => _$_Week(
      id: json['id'] as String,
      order: json['order'] as int,
      startDate: const DateTimeConverter()
          .fromJson(json['startDate'] as Map<String, dynamic>),
      endDate: const DateTimeConverter()
          .fromJson(json['endDate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeekToJson(_$_Week instance) => <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'startDate': const DateTimeConverter().toJson(instance.startDate),
      'endDate': const DateTimeConverter().toJson(instance.endDate),
    };
