// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceModel _$PriceModelFromJson(Map<String, dynamic> json) => PriceModel(
      status: json['status'] as String?,
      maximum_price: json['Maximum Price'] as int?,
      average_price: json['Average Price'] as int?,
      minimum_price: json['Minimum Price'] as int?,
    );

Map<String, dynamic> _$PriceModelToJson(PriceModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'Maximum Price': instance.maximum_price,
      'Average Price': instance.average_price,
      'Minimum Price': instance.minimum_price,
    };
