

// ignore_for_file: non_constant_identifier_names
import 'package:json_annotation/json_annotation.dart';

part 'price.g.dart';

@JsonSerializable()

class PriceModel {
  String? status;
  @JsonKey(name:"Maximum Price")
  int? maximum_price;
    @JsonKey(name:"Average Price")
  double? average_price;
    @JsonKey(name:"Minimum Price")
  int? minimum_price;



  PriceModel({
    this.status,
    this.maximum_price,
    this.average_price,
    this.minimum_price,
  });

  factory PriceModel.fromJson(Map<String, dynamic> json) =>
      _$PriceModelFromJson(json);
  Map<String, dynamic> toJson() => _$PriceModelToJson(this);
}
