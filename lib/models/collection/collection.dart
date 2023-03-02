import 'package:json_annotation/json_annotation.dart';

import '../models.dart';

part 'collection.g.dart';

@JsonSerializable()
class Collection {
  Collection({
    required this.data,
    required this.meta,
  });

  List<CollectionData> data;
  Meta meta;

  factory Collection.fromJson(Map<String, dynamic> json) {
    return _$CollectionFromJson(json);
  }
}

@JsonSerializable()
class CollectionData {
  CollectionData({
    required this.id,
    required this.url,
    required this.shortUrl,
    required this.views,
    required this.favorites,
    required this.source,
    required this.purity,
    required this.category,
    required this.dimensionX,
    required this.dimensionY,
    required this.resolution,
    required this.ratio,
    required this.fileSize,
    required this.fileType,
    required this.createdAt,
    required this.colors,
    required this.path,
    required this.thumbs,
  });

  String id;
  String url;
  String shortUrl;
  int views;
  int favorites;
  String source;
  Purity purity;
  Category category;
  int dimensionX;
  int dimensionY;
  String resolution;
  String ratio;
  int fileSize;
  FileType fileType;
  DateTime createdAt;
  List<String> colors;
  String path;
  Thumbs thumbs;

  factory CollectionData.fromJson(Map<String, dynamic> json) {
    return _$CollectionDataFromJson(json);
  }
}
