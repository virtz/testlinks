import 'package:json_annotation/json_annotation.dart';

part 'area_model.g.dart';

@JsonSerializable()
class AreaModel {
  @JsonKey(name: "_id")
  String? id;
  String? areaname;
  AreaModel({
    this.id,
    this.areaname,
  });
  factory AreaModel.fromJson(Map<String, dynamic> json) =>
      _$AreaModelFromJson(json);
  Map<String, dynamic> toJson() => _$AreaModelToJson(this);
}
