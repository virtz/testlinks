import 'package:ajeo/core/models/area_model.dart';
import 'package:ajeo/core/models/price_option.dart';
import 'package:json_annotation/json_annotation.dart';

part 'zone.g.dart';

@JsonSerializable()
class Zone {
  @JsonKey(name: "_id")
  String? id;
  String? zonename;
  String? state;
  List<String>? area;
  @JsonKey(name: "price_options")
  PriceOption? priceOption;
  String? createdAt;
  List<AreaModel>? areas;
  String? updatedAt;
  Zone({
    this.id,
    this.zonename,
    this.state,
    this.area,
    this.priceOption,
    this.areas,
    this.createdAt,
    this.updatedAt,
  });

  factory Zone.fromJson(Map<String, dynamic> json) => _$ZoneFromJson(json);
  Map<String, dynamic> toJson() => _$ZoneToJson(this);
}
