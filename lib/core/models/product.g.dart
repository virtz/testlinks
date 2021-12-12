// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['_id'] as String?,
      productname: json['productname'] as String?,
      productimage: json['productimage'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      variety: (json['variety'] as List<dynamic>?)
          ?.map((e) => Variety.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      '_id': instance.id,
      'productname': instance.productname,
      'productimage': instance.productimage,
      'variety': instance.variety,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
