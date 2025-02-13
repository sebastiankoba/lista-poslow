// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parliament_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParliamentMember _$ParliamentMemberFromJson(Map<String, dynamic> json) {
  return _ParliamentMember.fromJson(json);
}

/// @nodoc
mixin _$ParliamentMember {
  bool? get active => throw _privateConstructorUsedError;
  String? get birthDate => throw _privateConstructorUsedError;
  String? get club => throw _privateConstructorUsedError;
  String? get districtName => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get lastFirstName => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  int? get numberOfVotes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParliamentMemberCopyWith<ParliamentMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParliamentMemberCopyWith<$Res> {
  factory $ParliamentMemberCopyWith(
          ParliamentMember value, $Res Function(ParliamentMember) then) =
      _$ParliamentMemberCopyWithImpl<$Res, ParliamentMember>;
  @useResult
  $Res call(
      {bool? active,
      String? birthDate,
      String? club,
      String? districtName,
      String? profession,
      String? lastFirstName,
      int? id,
      int? numberOfVotes});
}

/// @nodoc
class _$ParliamentMemberCopyWithImpl<$Res, $Val extends ParliamentMember>
    implements $ParliamentMemberCopyWith<$Res> {
  _$ParliamentMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = freezed,
    Object? birthDate = freezed,
    Object? club = freezed,
    Object? districtName = freezed,
    Object? profession = freezed,
    Object? lastFirstName = freezed,
    Object? id = freezed,
    Object? numberOfVotes = freezed,
  }) {
    return _then(_value.copyWith(
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      club: freezed == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as String?,
      districtName: freezed == districtName
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      lastFirstName: freezed == lastFirstName
          ? _value.lastFirstName
          : lastFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfVotes: freezed == numberOfVotes
          ? _value.numberOfVotes
          : numberOfVotes // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParliamentMemberImplCopyWith<$Res>
    implements $ParliamentMemberCopyWith<$Res> {
  factory _$$ParliamentMemberImplCopyWith(_$ParliamentMemberImpl value,
          $Res Function(_$ParliamentMemberImpl) then) =
      __$$ParliamentMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? active,
      String? birthDate,
      String? club,
      String? districtName,
      String? profession,
      String? lastFirstName,
      int? id,
      int? numberOfVotes});
}

/// @nodoc
class __$$ParliamentMemberImplCopyWithImpl<$Res>
    extends _$ParliamentMemberCopyWithImpl<$Res, _$ParliamentMemberImpl>
    implements _$$ParliamentMemberImplCopyWith<$Res> {
  __$$ParliamentMemberImplCopyWithImpl(_$ParliamentMemberImpl _value,
      $Res Function(_$ParliamentMemberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = freezed,
    Object? birthDate = freezed,
    Object? club = freezed,
    Object? districtName = freezed,
    Object? profession = freezed,
    Object? lastFirstName = freezed,
    Object? id = freezed,
    Object? numberOfVotes = freezed,
  }) {
    return _then(_$ParliamentMemberImpl(
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      club: freezed == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as String?,
      districtName: freezed == districtName
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      lastFirstName: freezed == lastFirstName
          ? _value.lastFirstName
          : lastFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfVotes: freezed == numberOfVotes
          ? _value.numberOfVotes
          : numberOfVotes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParliamentMemberImpl implements _ParliamentMember {
  const _$ParliamentMemberImpl(
      {this.active,
      this.birthDate,
      this.club,
      this.districtName,
      this.profession,
      this.lastFirstName,
      this.id,
      this.numberOfVotes});

  factory _$ParliamentMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParliamentMemberImplFromJson(json);

  @override
  final bool? active;
  @override
  final String? birthDate;
  @override
  final String? club;
  @override
  final String? districtName;
  @override
  final String? profession;
  @override
  final String? lastFirstName;
  @override
  final int? id;
  @override
  final int? numberOfVotes;

  @override
  String toString() {
    return 'ParliamentMember(active: $active, birthDate: $birthDate, club: $club, districtName: $districtName, profession: $profession, lastFirstName: $lastFirstName, id: $id, numberOfVotes: $numberOfVotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParliamentMemberImpl &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.club, club) || other.club == club) &&
            (identical(other.districtName, districtName) ||
                other.districtName == districtName) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.lastFirstName, lastFirstName) ||
                other.lastFirstName == lastFirstName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.numberOfVotes, numberOfVotes) ||
                other.numberOfVotes == numberOfVotes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, active, birthDate, club,
      districtName, profession, lastFirstName, id, numberOfVotes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParliamentMemberImplCopyWith<_$ParliamentMemberImpl> get copyWith =>
      __$$ParliamentMemberImplCopyWithImpl<_$ParliamentMemberImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParliamentMemberImplToJson(
      this,
    );
  }
}

abstract class _ParliamentMember implements ParliamentMember {
  const factory _ParliamentMember(
      {final bool? active,
      final String? birthDate,
      final String? club,
      final String? districtName,
      final String? profession,
      final String? lastFirstName,
      final int? id,
      final int? numberOfVotes}) = _$ParliamentMemberImpl;

  factory _ParliamentMember.fromJson(Map<String, dynamic> json) =
      _$ParliamentMemberImpl.fromJson;

  @override
  bool? get active;
  @override
  String? get birthDate;
  @override
  String? get club;
  @override
  String? get districtName;
  @override
  String? get profession;
  @override
  String? get lastFirstName;
  @override
  int? get id;
  @override
  int? get numberOfVotes;
  @override
  @JsonKey(ignore: true)
  _$$ParliamentMemberImplCopyWith<_$ParliamentMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
