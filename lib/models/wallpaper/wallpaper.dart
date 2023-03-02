import 'package:json_annotation/json_annotation.dart';
import 'package:wallhaven_api/models/models.dart';

part 'wallpaper.g.dart';

@JsonSerializable()
class Wallpaper {
  Wallpaper({
    required this.data,
  });

  WallpaperData data;

  factory Wallpaper.fromJson(Map<String, dynamic> json) {
    return _$WallpaperFromJson(json);
  }
}

@JsonSerializable()
class WallpaperData {
  WallpaperData({
    required this.id,
    required this.url,
    required this.shortUrl,
    required this.uploader,
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
    required this.tags,
  });

  String id;
  String url;
  String shortUrl;
  Uploader uploader;
  int views;
  int favorites;
  String source;
  String purity;
  String category;
  int dimensionX;
  int dimensionY;
  String resolution;
  String ratio;
  int fileSize;
  String fileType;
  DateTime createdAt;
  List<String> colors;
  String path;
  Thumbs thumbs;
  List<Tag> tags;

  factory WallpaperData.fromJson(Map<String, dynamic> json) {
    return _$WallpaperDataFromJson(json);
  }
}
