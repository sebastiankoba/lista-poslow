// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parliament_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParliamentMemberImpl _$$ParliamentMemberImplFromJson(
        Map<String, dynamic> json) =>
    _$ParliamentMemberImpl(
      active: json['active'] as bool?,
      birthDate: json['birthDate'] as String?,
      club: json['club'] as String?,
      districtName: json['districtName'] as String?,
      educationLevel: json['educationLevel'] as String?,
      firstName: json['firstName'] as String?,
      id: json['id'] as int?,
      lastName: json['lastName'] as String?,
      numberOfVotes: json['numberOfVotes'] as int?,
    );

Map<String, dynamic> _$$ParliamentMemberImplToJson(
        _$ParliamentMemberImpl instance) =>
    <String, dynamic>{
      'active': instance.active,
      'birthDate': instance.birthDate,
      'club': instance.club,
      'districtName': instance.districtName,
      'educationLevel': instance.educationLevel,
      'firstName': instance.firstName,
      'id': instance.id,
      'lastName': instance.lastName,
      'numberOfVotes': instance.numberOfVotes,
    };
