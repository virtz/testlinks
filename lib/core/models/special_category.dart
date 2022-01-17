// ignore_for_file: non_constant_identifier_names

import 'package:ajeo/core/models/special_product.dart';
import 'package:json_annotation/json_annotation.dart';


part 'special_category.g.dart';

@JsonSerializable()
class SpecialCategory {
  String? id;
  String? special_category_name;
  List<SpecialProduct>? special_product;
  SpecialCategory({
    this.id,
    this.special_category_name,
    this.special_product,
  });

   factory SpecialCategory.fromJson(Map<String, dynamic> json) =>
      _$SpecialCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$SpecialCategoryToJson(this);
}
