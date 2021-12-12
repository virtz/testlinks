import 'package:json_annotation/json_annotation.dart';

part 'uos.g.dart';

@JsonSerializable()

class Uos {
  @JsonKey(name:"_id")
  String? id;
  String? uosname;
  String? createdAt;
  String? updatedAt;
  Uos({
    this.id,
    this.uosname,
    this.createdAt,
    this.updatedAt,
  });
   factory Uos.fromJson(Map<String, dynamic> json) =>
      _$UosFromJson(json);
  Map<String, dynamic> toJson() => _$UosToJson(this);
}
