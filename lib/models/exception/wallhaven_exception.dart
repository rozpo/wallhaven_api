import 'package:json_annotation/json_annotation.dart';

part 'wallhaven_exception.g.dart';

@JsonSerializable()
class WallhavenException {
  WallhavenException({
    required this.error,
  });

  String error;

  factory WallhavenException.fromJson(Map<String, dynamic> json) {
    return _$WallhavenExceptionFromJson(json);
  }
}
