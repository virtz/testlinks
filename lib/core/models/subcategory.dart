
import 'package:json_annotation/json_annotation.dart';

part 'subcategory.g.dart';

@JsonSerializable()
class SubcategoryModel {
    @JsonKey(name: "_id")
  String? id;
    @JsonKey(name: "subcategoryname")
  String? subcategoryName;

  String? createdAt;
  String? updatedAt;
  SubcategoryModel({
    this.id,
    this.subcategoryName,
   
    this.createdAt,
    this.updatedAt,
  });

  factory SubcategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$SubcategoryModelToJson(this);
}
