// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallpaper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wallpaper _$WallpaperFromJson(Map<String, dynamic> json) => Wallpaper(
      data: WallpaperData.fromJson(json['data'] as Map<String, dynamic>),
    );

WallpaperData _$WallpaperDataFromJson(Map<String, dynamic> json) =>
    WallpaperData(
      id: json['id'] as String,
      url: json['url'] as String,
      shortUrl: json['short_url'] as String,
      uploader: Uploader.fromJson(json['uploader'] as Map<String, dynamic>),
      views: json['views'] as int,
      favorites: json['favorites'] as int,
      source: json['source'] as String,
      purity: json['purity'] as String,
      category: json['category'] as String,
      dimensionX: json['dimension_x'] as int,
      dimensionY: json['dimension_y'] as int,
      resolution: json['resolution'] as String,
      ratio: json['ratio'] as String,
      fileSize: json['file_size'] as int,
      fileType: json['file_type'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      colors:
          (json['colors'] as List<dynamic>).map((e) => e as String).toList(),
      path: json['path'] as String,
      thumbs: Thumbs.fromJson(json['thumbs'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
