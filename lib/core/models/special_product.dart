
import 'package:json_annotation/json_annotation.dart';

part 'special_product.g.dart';

@JsonSerializable()
class SpecialProduct {
   @JsonKey(name: "_id")
  String? id;
  String? productname;
  String? productimage;
  List<String>? variety;
  String? createdAt;
  String? updatesAt;
  SpecialProduct({
    this.id,
    this.productname,
    this.productimage,
    this.variety,
    this.createdAt,
    this.updatesAt,
  });


  factory SpecialProduct.fromJson(Map<String, dynamic> json) =>
      _$SpecialProductFromJson(json);
  Map<String, dynamic> toJson() => _$SpecialProductToJson(this);
}
