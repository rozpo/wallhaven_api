// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Search _$SearchFromJson(Map<String, dynamic> json) => Search(
      data: (json['data'] as List<dynamic>)
          .map((e) => SearchData.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

SearchData _$SearchDataFromJson(Map<String, dynamic> json) => SearchData(
      id: json['id'] as String,
      url: json['url'] as String,
      shortUrl: json['short_url'] as String,
      views: json['views'] as int,
      favorites: json['favorites'] as int,
      source: json['source'] as String,
      purity: $enumDecode(_$PurityEnumMap, json['purity']),
      category: $enumDecode(_$CategoryEnumMap, json['category']),
      dimensionX: json['dimension_x'] as int,
      dimensionY: json['dimension_y'] as int,
      resolution: json['resolution'] as String,
      ratio: json['ratio'] as String,
      fileSize: json['file_size'] as int,
      fileType: $enumDecode(_$FileTypeEnumMap, json['file_type']),
      createdAt: DateTime.parse(json['created_at'] as String),
      colors:
          (json['colors'] as List<dynamic>).map((e) => e as String).toList(),
      path: json['path'] as String,
      thumbs: Thumbs.fromJson(json['thumbs'] as Map<String, dynamic>),
    );

const _$PurityEnumMap = {
  Purity.sfw: 'sfw',
  Purity.sketchy: 'sketchy',
  Purity.nsfw: 'nsfw',
};

const _$CategoryEnumMap = {
  Category.general: 'general',
  Category.anime: 'anime',
  Category.people: 'people',
};

const _$FileTypeEnumMap = {
  FileType.jpeg: 'jpeg',
  FileType.png: 'png',
};
