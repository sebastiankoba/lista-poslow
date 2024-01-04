// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proceeding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Proceeding _$ProceedingFromJson(Map<String, dynamic> json) {
  return _Proceeding.fromJson(json);
}

/// @nodoc
mixin _$Proceeding {
  List<String>? get dates => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProceedingCopyWith<Proceeding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProceedingCopyWith<$Res> {
  factory $ProceedingCopyWith(
          Proceeding value, $Res Function(Proceeding) then) =
      _$ProceedingCopyWithImpl<$Res, Proceeding>;
  @useResult
  $Res call({List<String>? dates, int? number, String? title});
}

/// @nodoc
class _$ProceedingCopyWithImpl<$Res, $Val extends Proceeding>
    implements $ProceedingCopyWith<$Res> {
  _$ProceedingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? number = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProceedingImplCopyWith<$Res>
    implements $ProceedingCopyWith<$Res> {
  factory _$$ProceedingImplCopyWith(
          _$ProceedingImpl value, $Res Function(_$ProceedingImpl) then) =
      __$$ProceedingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? dates, int? number, String? title});
}

/// @nodoc
class __$$ProceedingImplCopyWithImpl<$Res>
    extends _$ProceedingCopyWithImpl<$Res, _$ProceedingImpl>
    implements _$$ProceedingImplCopyWith<$Res> {
  __$$ProceedingImplCopyWithImpl(
      _$ProceedingImpl _value, $Res Function(_$ProceedingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? number = freezed,
    Object? title = freezed,
  }) {
    return _then(_$ProceedingImpl(
      dates: freezed == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProceedingImpl implements _Proceeding {
  const _$ProceedingImpl({final List<String>? dates, this.number, this.title})
      : _dates = dates;

  factory _$ProceedingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProceedingImplFromJson(json);

  final List<String>? _dates;
  @override
  List<String>? get dates {
    final value = _dates;
    if (value == null) return null;
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? number;
  @override
  final String? title;

  @override
  String toString() {
    return 'Proceeding(dates: $dates, number: $number, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProceedingImpl &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dates), number, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProceedingImplCopyWith<_$ProceedingImpl> get copyWith =>
      __$$ProceedingImplCopyWithImpl<_$ProceedingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProceedingImplToJson(
      this,
    );
  }
}

abstract class _Proceeding implements Proceeding {
  const factory _Proceeding(
      {final List<String>? dates,
      final int? number,
      final String? title}) = _$ProceedingImpl;

  factory _Proceeding.fromJson(Map<String, dynamic> json) =
      _$ProceedingImpl.fromJson;

  @override
  List<String>? get dates;
  @override
  int? get number;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$ProceedingImplCopyWith<_$ProceedingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
