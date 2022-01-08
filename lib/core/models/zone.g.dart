// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Zone _$ZoneFromJson(Map<String, dynamic> json) => Zone(
      id: json['_id'] as String?,
      zonename: json['zonename'] as String?,
      state: json['state'] as String?,
      area: (json['area'] as List<dynamic>?)?.map((e) => e as String).toList(),
      priceOption: json['price_options'] == null
          ? null
          : PriceOption.fromJson(json['price_options'] as Map<String, dynamic>),
      areas: (json['areas'] as List<dynamic>?)
          ?.map((e) => AreaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$ZoneToJson(Zone instance) => <String, dynamic>{
      '_id': instance.id,
      'zonename': instance.zonename,
      'state': instance.state,
      'area': instance.area,
      'price_options': instance.priceOption,
      'createdAt': instance.createdAt,
      'areas': instance.areas,
      'updatedAt': instance.updatedAt,
    };
