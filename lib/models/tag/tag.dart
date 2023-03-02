import 'package:json_annotation/json_annotation.dart';

part 'tag.g.dart';

@JsonSerializable()
class Tag {
  Tag({
    required this.data,
  });

  TagData? data;

  factory Tag.fromJson(Map<String, dynamic> json) {
    return _$TagFromJson(json);
  }
}

@JsonSerializable()
class TagData {
  TagData({
    required this.id,
    required this.name,
    required this.alias,
    required this.categoryId,
    required this.category,
    required this.purity,
    required this.createdAt,
  });

  int id;
  String name;
  String alias;
  int categoryId;
  String category;
  String purity;
  DateTime createdAt;

  factory TagData.fromJson(Map<String, dynamic> json) {
    return _$TagDataFromJson(json);
  }
}
