import 'package:json_annotation/json_annotation.dart';

part 'collections.g.dart';

@JsonSerializable()
class Collections {
  Collections({
    required this.data,
  });

  List<CollectionsData> data;

  factory Collections.fromJson(Map<String, dynamic> json) {
    return _$CollectionsFromJson(json);
  }
}

@JsonSerializable()
class CollectionsData {
  CollectionsData({
    required this.id,
    required this.label,
    required this.views,
    required this.public,
    required this.count,
  });

  int id;
  String label;
  int views;
  int public;
  int count;

  factory CollectionsData.fromJson(Map<String, dynamic> json) {
    return _$CollectionsDataFromJson(json);
  }
}
