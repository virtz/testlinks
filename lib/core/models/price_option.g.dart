// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceOption _$PriceOptionFromJson(Map<String, dynamic> json) => PriceOption(
      highest_zonal_price: json['highest_zonal_price'] as int?,
      lowest_zonal_price: json['lowest_zonal_price'] as int?,
      average_zonal_price: (json['Average_zonal_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PriceOptionToJson(PriceOption instance) =>
    <String, dynamic>{
      'highest_zonal_price': instance.highest_zonal_price,
      'lowest_zonal_price': instance.lowest_zonal_price,
      'Average_zonal_price': instance.average_zonal_price,
    };
