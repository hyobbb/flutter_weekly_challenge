// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppSettingTearOff {
  const _$AppSettingTearOff();

  _AppSetting call({required ThemeMode themeMode, required Locale locale}) {
    return _AppSetting(
      themeMode: themeMode,
      locale: locale,
    );
  }
}

/// @nodoc
const $AppSetting = _$AppSettingTearOff();

/// @nodoc
mixin _$AppSetting {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  Locale get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppSettingCopyWith<AppSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingCopyWith<$Res> {
  factory $AppSettingCopyWith(
          AppSetting value, $Res Function(AppSetting) then) =
      _$AppSettingCopyWithImpl<$Res>;
  $Res call({ThemeMode themeMode, Locale locale});
}

/// @nodoc
class _$AppSettingCopyWithImpl<$Res> implements $AppSettingCopyWith<$Res> {
  _$AppSettingCopyWithImpl(this._value, this._then);

  final AppSetting _value;
  // ignore: unused_field
  final $Res Function(AppSetting) _then;

  @override
  $Res call({
    Object? themeMode = freezed,
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
abstract class _$AppSettingCopyWith<$Res> implements $AppSettingCopyWith<$Res> {
  factory _$AppSettingCopyWith(
          _AppSetting value, $Res Function(_AppSetting) then) =
      __$AppSettingCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode themeMode, Locale locale});
}

/// @nodoc
class __$AppSettingCopyWithImpl<$Res> extends _$AppSettingCopyWithImpl<$Res>
    implements _$AppSettingCopyWith<$Res> {
  __$AppSettingCopyWithImpl(
      _AppSetting _value, $Res Function(_AppSetting) _then)
      : super(_value, (v) => _then(v as _AppSetting));

  @override
  _AppSetting get _value => super._value as _AppSetting;

  @override
  $Res call({
    Object? themeMode = freezed,
    Object? locale = freezed,
  }) {
    return _then(_AppSetting(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_AppSetting implements _AppSetting {
  const _$_AppSetting({required this.themeMode, required this.locale});

  @override
  final ThemeMode themeMode;
  @override
  final Locale locale;

  @override
  String toString() {
    return 'AppSetting(themeMode: $themeMode, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppSetting &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode) &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(themeMode),
      const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  _$AppSettingCopyWith<_AppSetting> get copyWith =>
      __$AppSettingCopyWithImpl<_AppSetting>(this, _$identity);
}

abstract class _AppSetting implements AppSetting {
  const factory _AppSetting(
      {required ThemeMode themeMode, required Locale locale}) = _$_AppSetting;

  @override
  ThemeMode get themeMode;
  @override
  Locale get locale;
  @override
  @JsonKey(ignore: true)
  _$AppSettingCopyWith<_AppSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

Record _$RecordFromJson(Map<String, dynamic> json) {
  return _Record.fromJson(json);
}

/// @nodoc
class _$RecordTearOff {
  const _$RecordTearOff();

  _Record call({required Week week, required List<Task> tasks}) {
    return _Record(
      week: week,
      tasks: tasks,
    );
  }

  Record fromJson(Map<String, Object?> json) {
    return Record.fromJson(json);
  }
}

/// @nodoc
const $Record = _$RecordTearOff();

/// @nodoc
mixin _$Record {
  Week get week => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordCopyWith<Record> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordCopyWith<$Res> {
  factory $RecordCopyWith(Record value, $Res Function(Record) then) =
      _$RecordCopyWithImpl<$Res>;
  $Res call({Week week, List<Task> tasks});

  $WeekCopyWith<$Res> get week;
}

/// @nodoc
class _$RecordCopyWithImpl<$Res> implements $RecordCopyWith<$Res> {
  _$RecordCopyWithImpl(this._value, this._then);

  final Record _value;
  // ignore: unused_field
  final $Res Function(Record) _then;

  @override
  $Res call({
    Object? week = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      week: week == freezed
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as Week,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }

  @override
  $WeekCopyWith<$Res> get week {
    return $WeekCopyWith<$Res>(_value.week, (value) {
      return _then(_value.copyWith(week: value));
    });
  }
}

/// @nodoc
abstract class _$RecordCopyWith<$Res> implements $RecordCopyWith<$Res> {
  factory _$RecordCopyWith(_Record value, $Res Function(_Record) then) =
      __$RecordCopyWithImpl<$Res>;
  @override
  $Res call({Week week, List<Task> tasks});

  @override
  $WeekCopyWith<$Res> get week;
}

/// @nodoc
class __$RecordCopyWithImpl<$Res> extends _$RecordCopyWithImpl<$Res>
    implements _$RecordCopyWith<$Res> {
  __$RecordCopyWithImpl(_Record _value, $Res Function(_Record) _then)
      : super(_value, (v) => _then(v as _Record));

  @override
  _Record get _value => super._value as _Record;

  @override
  $Res call({
    Object? week = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_Record(
      week: week == freezed
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as Week,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Record implements _Record {
  const _$_Record({required this.week, required this.tasks});

  factory _$_Record.fromJson(Map<String, dynamic> json) =>
      _$$_RecordFromJson(json);

  @override
  final Week week;
  @override
  final List<Task> tasks;

  @override
  String toString() {
    return 'Record(week: $week, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Record &&
            const DeepCollectionEquality().equals(other.week, week) &&
            const DeepCollectionEquality().equals(other.tasks, tasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(week),
      const DeepCollectionEquality().hash(tasks));

  @JsonKey(ignore: true)
  @override
  _$RecordCopyWith<_Record> get copyWith =>
      __$RecordCopyWithImpl<_Record>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecordToJson(this);
  }
}

abstract class _Record implements Record {
  const factory _Record({required Week week, required List<Task> tasks}) =
      _$_Record;

  factory _Record.fromJson(Map<String, dynamic> json) = _$_Record.fromJson;

  @override
  Week get week;
  @override
  List<Task> get tasks;
  @override
  @JsonKey(ignore: true)
  _$RecordCopyWith<_Record> get copyWith => throw _privateConstructorUsedError;
}

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
class _$TaskTearOff {
  const _$TaskTearOff();

  _Task call(
      {int? id, required String text, int target = 1, int executed = 0}) {
    return _Task(
      id: id,
      text: text,
      target: target,
      executed: executed,
    );
  }

  Task fromJson(Map<String, Object?> json) {
    return Task.fromJson(json);
  }
}

/// @nodoc
const $Task = _$TaskTearOff();

/// @nodoc
mixin _$Task {
  int? get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  int get target => throw _privateConstructorUsedError;
  int get executed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call({int? id, String text, int target, int executed});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? target = freezed,
    Object? executed = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as int,
      executed: executed == freezed
          ? _value.executed
          : executed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) then) =
      __$TaskCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String text, int target, int executed});
}

/// @nodoc
class __$TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(_Task _value, $Res Function(_Task) _then)
      : super(_value, (v) => _then(v as _Task));

  @override
  _Task get _value => super._value as _Task;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? target = freezed,
    Object? executed = freezed,
  }) {
    return _then(_Task(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as int,
      executed: executed == freezed
          ? _value.executed
          : executed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Task implements _Task {
  const _$_Task(
      {this.id, required this.text, this.target = 1, this.executed = 0})
      : assert(executed >= 0),
        assert(target >= executed);

  factory _$_Task.fromJson(Map<String, dynamic> json) => _$$_TaskFromJson(json);

  @override
  final int? id;
  @override
  final String text;
  @JsonKey()
  @override
  final int target;
  @JsonKey()
  @override
  final int executed;

  @override
  String toString() {
    return 'Task(id: $id, text: $text, target: $target, executed: $executed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Task &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.target, target) &&
            const DeepCollectionEquality().equals(other.executed, executed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(target),
      const DeepCollectionEquality().hash(executed));

  @JsonKey(ignore: true)
  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskToJson(this);
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {int? id, required String text, int target, int executed}) = _$_Task;

  factory _Task.fromJson(Map<String, dynamic> json) = _$_Task.fromJson;

  @override
  int? get id;
  @override
  String get text;
  @override
  int get target;
  @override
  int get executed;
  @override
  @JsonKey(ignore: true)
  _$TaskCopyWith<_Task> get copyWith => throw _privateConstructorUsedError;
}

Week _$WeekFromJson(Map<String, dynamic> json) {
  return _Week.fromJson(json);
}

/// @nodoc
class _$WeekTearOff {
  const _$WeekTearOff();

  _Week call(
      {required String id,
      required int order,
      @DateTimeConverter() required DateTime startDate,
      @DateTimeConverter() required DateTime endDate}) {
    return _Week(
      id: id,
      order: order,
      startDate: startDate,
      endDate: endDate,
    );
  }

  Week fromJson(Map<String, Object?> json) {
    return Week.fromJson(json);
  }
}

/// @nodoc
const $Week = _$WeekTearOff();

/// @nodoc
mixin _$Week {
  String get id => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get startDate => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekCopyWith<Week> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekCopyWith<$Res> {
  factory $WeekCopyWith(Week value, $Res Function(Week) then) =
      _$WeekCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int order,
      @DateTimeConverter() DateTime startDate,
      @DateTimeConverter() DateTime endDate});
}

/// @nodoc
class _$WeekCopyWithImpl<$Res> implements $WeekCopyWith<$Res> {
  _$WeekCopyWithImpl(this._value, this._then);

  final Week _value;
  // ignore: unused_field
  final $Res Function(Week) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? order = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$WeekCopyWith<$Res> implements $WeekCopyWith<$Res> {
  factory _$WeekCopyWith(_Week value, $Res Function(_Week) then) =
      __$WeekCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int order,
      @DateTimeConverter() DateTime startDate,
      @DateTimeConverter() DateTime endDate});
}

/// @nodoc
class __$WeekCopyWithImpl<$Res> extends _$WeekCopyWithImpl<$Res>
    implements _$WeekCopyWith<$Res> {
  __$WeekCopyWithImpl(_Week _value, $Res Function(_Week) _then)
      : super(_value, (v) => _then(v as _Week));

  @override
  _Week get _value => super._value as _Week;

  @override
  $Res call({
    Object? id = freezed,
    Object? order = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_Week(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Week implements _Week {
  const _$_Week(
      {required this.id,
      required this.order,
      @DateTimeConverter() required this.startDate,
      @DateTimeConverter() required this.endDate});

  factory _$_Week.fromJson(Map<String, dynamic> json) => _$$_WeekFromJson(json);

  @override
  final String id;
  @override
  final int order;
  @override
  @DateTimeConverter()
  final DateTime startDate;
  @override
  @DateTimeConverter()
  final DateTime endDate;

  @override
  String toString() {
    return 'Week(id: $id, order: $order, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Week &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate));

  @JsonKey(ignore: true)
  @override
  _$WeekCopyWith<_Week> get copyWith =>
      __$WeekCopyWithImpl<_Week>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeekToJson(this);
  }
}

abstract class _Week implements Week {
  const factory _Week(
      {required String id,
      required int order,
      @DateTimeConverter() required DateTime startDate,
      @DateTimeConverter() required DateTime endDate}) = _$_Week;

  factory _Week.fromJson(Map<String, dynamic> json) = _$_Week.fromJson;

  @override
  String get id;
  @override
  int get order;
  @override
  @DateTimeConverter()
  DateTime get startDate;
  @override
  @DateTimeConverter()
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$WeekCopyWith<_Week> get copyWith => throw _privateConstructorUsedError;
}
