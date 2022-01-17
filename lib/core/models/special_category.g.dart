// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialCategory _$SpecialCategoryFromJson(Map<String, dynamic> json) =>
    SpecialCategory(
      id: json['id'] as String?,
      special_category_name: json['special_category_name'] as String?,
      special_product: (json['special_product'] as List<dynamic>?)
          ?.map((e) => SpecialProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecialCategoryToJson(SpecialCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'special_category_name': instance.special_category_name,
      'special_product': instance.special_product,
    };
