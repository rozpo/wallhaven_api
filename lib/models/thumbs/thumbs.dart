import 'package:json_annotation/json_annotation.dart';

part 'thumbs.g.dart';

@JsonSerializable()
class Thumbs {
  Thumbs({
    required this.large,
    required this.original,
    required this.small,
  });

  String large;
  String original;
  String small;

  factory Thumbs.fromJson(Map<String, dynamic> json) {
    return _$ThumbsFromJson(json);
  }
}
