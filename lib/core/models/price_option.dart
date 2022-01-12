// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part "price_option.g.dart";

@JsonSerializable()
class PriceOption {
  int? highest_zonal_price;
  int? lowest_zonal_price;
  @JsonKey(name: "Average_zonal_price")
  double? average_zonal_price;
  PriceOption({
    this.highest_zonal_price,
    this.lowest_zonal_price,
    this.average_zonal_price,
  });

    factory PriceOption.fromJson(Map<String, dynamic> json) => _$PriceOptionFromJson(json);
  Map<String, dynamic> toJson() => _$PriceOptionToJson(this);
}
