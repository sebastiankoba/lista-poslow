// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proceeding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProceedingImpl _$$ProceedingImplFromJson(Map<String, dynamic> json) =>
    _$ProceedingImpl(
      dates:
          (json['dates'] as List<dynamic>?)?.map((e) => e as String).toList(),
      number: json['number'] as int?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$ProceedingImplToJson(_$ProceedingImpl instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'number': instance.number,
      'title': instance.title,
    };
