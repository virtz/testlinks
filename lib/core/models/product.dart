import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/core/models/variety.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: "_id")
  String? id;
  String? productname;
  String? productimage;
  CategoryModel? category;
  SubcategoryModel? subcategory;
  List<Variety>? variety;
  String? createdAt;
  String? updatedAt;
  Product({
    this.id,
    this.productname,
    this.productimage,
    this.subcategory,
    this.createdAt,
    this.updatedAt,
    this.category,
    this.variety,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
