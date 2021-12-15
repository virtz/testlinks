// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubcategoryModel _$SubcategoryModelFromJson(Map<String, dynamic> json) =>
    SubcategoryModel(
      id: json['_id'] as String?,
      subcategoryName: json['subcategoryname'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      product: (json['product'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..subcategoryimage = json['subcategoryimage'] as String?;

Map<String, dynamic> _$SubcategoryModelToJson(SubcategoryModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'subcategoryname': instance.subcategoryName,
      'product': instance.product,
      'createdAt': instance.createdAt,
      'subcategoryimage': instance.subcategoryimage,
      'updatedAt': instance.updatedAt,
    };
