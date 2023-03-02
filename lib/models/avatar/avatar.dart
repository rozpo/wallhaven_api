import 'package:json_annotation/json_annotation.dart';

part 'avatar.g.dart';

@JsonSerializable()
class Avatar {
  Avatar({
    required this.the200Px,
    required this.the128Px,
    required this.the32Px,
    required this.the20Px,
  });

  String? the200Px;
  String? the128Px;
  String? the32Px;
  String? the20Px;

  factory Avatar.fromJson(Map<String, dynamic> json) {
    return _$AvatarFromJson(json);
  }
}
