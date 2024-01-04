// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vote_mp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VoteMP _$VoteMPFromJson(Map<String, dynamic> json) {
  return _VoteMP.fromJson(json);
}

/// @nodoc
mixin _$VoteMP {
  String? get date => throw _privateConstructorUsedError;
  String? get vote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoteMPCopyWith<VoteMP> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteMPCopyWith<$Res> {
  factory $VoteMPCopyWith(VoteMP value, $Res Function(VoteMP) then) =
      _$VoteMPCopyWithImpl<$Res, VoteMP>;
  @useResult
  $Res call({String? date, String? vote});
}

/// @nodoc
class _$VoteMPCopyWithImpl<$Res, $Val extends VoteMP>
    implements $VoteMPCopyWith<$Res> {
  _$VoteMPCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? vote = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      vote: freezed == vote
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoteMPImplCopyWith<$Res> implements $VoteMPCopyWith<$Res> {
  factory _$$VoteMPImplCopyWith(
          _$VoteMPImpl value, $Res Function(_$VoteMPImpl) then) =
      __$$VoteMPImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, String? vote});
}

/// @nodoc
class __$$VoteMPImplCopyWithImpl<$Res>
    extends _$VoteMPCopyWithImpl<$Res, _$VoteMPImpl>
    implements _$$VoteMPImplCopyWith<$Res> {
  __$$VoteMPImplCopyWithImpl(
      _$VoteMPImpl _value, $Res Function(_$VoteMPImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? vote = freezed,
  }) {
    return _then(_$VoteMPImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      vote: freezed == vote
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VoteMPImpl implements _VoteMP {
  const _$VoteMPImpl({this.date, this.vote});

  factory _$VoteMPImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoteMPImplFromJson(json);

  @override
  final String? date;
  @override
  final String? vote;

  @override
  String toString() {
    return 'VoteMP(date: $date, vote: $vote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteMPImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.vote, vote) || other.vote == vote));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, vote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteMPImplCopyWith<_$VoteMPImpl> get copyWith =>
      __$$VoteMPImplCopyWithImpl<_$VoteMPImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoteMPImplToJson(
      this,
    );
  }
}

abstract class _VoteMP implements VoteMP {
  const factory _VoteMP({final String? date, final String? vote}) =
      _$VoteMPImpl;

  factory _VoteMP.fromJson(Map<String, dynamic> json) = _$VoteMPImpl.fromJson;

  @override
  String? get date;
  @override
  String? get vote;
  @override
  @JsonKey(ignore: true)
  _$$VoteMPImplCopyWith<_$VoteMPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
