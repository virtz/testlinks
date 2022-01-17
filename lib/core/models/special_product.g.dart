// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialProduct _$SpecialProductFromJson(Map<String, dynamic> json) =>
    SpecialProduct(
      id: json['_id'] as String?,
      productname: json['productname'] as String?,
      productimage: json['productimage'] as String?,
      variety:
          (json['variety'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdAt: json['createdAt'] as String?,
      updatesAt: json['updatesAt'] as String?,
    );

Map<String, dynamic> _$SpecialProductToJson(SpecialProduct instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'productname': instance.productname,
      'productimage': instance.productimage,
      'variety': instance.variety,
      'createdAt': instance.createdAt,
      'updatesAt': instance.updatesAt,
    };
