import 'package:ajeo/core/models/subcategory.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class CategoryModel {
  @JsonKey(name: "_id")
  String? id;
  @JsonKey(name: "categoryname")
  String? categoryName;
  List<SubcategoryModel>? subcategory;
  String? createdAt;
  String? updatedAt;
  CategoryModel({
    this.id,
    this.categoryName,
    this.createdAt,
    this.updatedAt,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
