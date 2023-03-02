import 'package:json_annotation/json_annotation.dart';

import '../models.dart';

part 'uploader.g.dart';

@JsonSerializable()
class Uploader {
  Uploader({
    required this.username,
    required this.group,
    required this.avatar,
  });

  String username;
  String group;
  Avatar avatar;

  factory Uploader.fromJson(Map<String, dynamic> json) {
    return _$UploaderFromJson(json);
  }
}
