import 'package:ajeo/core/models/uos.dart';
import 'package:json_annotation/json_annotation.dart';

part 'variety.g.dart';

@JsonSerializable()
class Variety {
  @JsonKey(name: "_id")
  String? id;
  String? varietyname;
  List<Uos>? uos;
  String? createdAt;
  String? updatedAt;
  Variety(
      {this.id, this.varietyname, this.createdAt, this.updatedAt, this.uos});

  factory Variety.fromJson(Map<String, dynamic> json) =>
      _$VarietyFromJson(json);
  Map<String, dynamic> toJson() => _$VarietyToJson(this);
}
