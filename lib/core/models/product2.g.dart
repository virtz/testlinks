// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product2 _$Product2FromJson(Map<String, dynamic> json) => Product2(
      id: json['_id'] as String?,
      productname: json['productname'] as String?,
      productimage: json['productimage'] as String?,
      subcategory: json['subcategory'] == null
          ? null
          : SubcategoryModel.fromJson(
              json['subcategory'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      productdescription: json['productdescription'] as String?,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      variety: (json['variety'] as List<dynamic>?)
          ?.map((e) => Variety.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Product2ToJson(Product2 instance) => <String, dynamic>{
      '_id': instance.id,
      'productname': instance.productname,
      'productimage': instance.productimage,
      'productdescription': instance.productdescription,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'variety': instance.variety,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
