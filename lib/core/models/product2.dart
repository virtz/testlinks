import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/core/models/variety.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product2.g.dart';

@JsonSerializable()
class Product2 {
  @JsonKey(name: "_id")
  String? id;
  String? productname;
  String? productimage;
   String? productdescription;
  CategoryModel? category;
  SubcategoryModel? subcategory;
  List<Variety>? variety;
  String? createdAt;
  String? updatedAt;
  Product2({
    this.id,
    this.productname,
    this.productimage,
    this.subcategory,
    this.createdAt,
    this.updatedAt,
    this.productdescription,
    this.category,
    this.variety,
  });

  factory Product2.fromJson(Map<String, dynamic> json) =>
      _$Product2FromJson(json);
  Map<String, dynamic> toJson() => _$Product2ToJson(this);
}
