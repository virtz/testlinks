
import 'package:ajeo/core/models/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subcategory2.g.dart';

@JsonSerializable()
class SubcategoryModel2 {
  @JsonKey(name: "_id")
  String? id;
  @JsonKey(name: "subcategoryname")
  String? subcategoryName;
  List<Product>? product;
  String? createdAt;
  // String? category;
  @JsonKey(name: "subcategoryimage")
  String? subcategoryimage;
  String? updatedAt;
  SubcategoryModel2(
      {this.id,
      this.subcategoryName,
      this.createdAt,
      this.updatedAt,
      // this.category,
      this.product,
      this.subcategoryimage});

  factory SubcategoryModel2.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryModel2FromJson(json);
  Map<String, dynamic> toJson() => _$SubcategoryModel2ToJson(this);
}
