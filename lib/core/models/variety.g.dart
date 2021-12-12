// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variety.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variety _$VarietyFromJson(Map<String, dynamic> json) => Variety(
      id: json['_id'] as String?,
      varietyname: json['varietyname'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      uos: (json['uos'] as List<dynamic>?)
          ?.map((e) => Uos.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VarietyToJson(Variety instance) => <String, dynamic>{
      '_id': instance.id,
      'varietyname': instance.varietyname,
      'uos': instance.uos,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
