// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Settings _$SettingsFromJson(Map<String, dynamic> json) => Settings(
      data: SettingsData.fromJson(json['data'] as Map<String, dynamic>),
    );

SettingsData _$SettingsDataFromJson(Map<String, dynamic> json) => SettingsData(
      thumbSize: json['thumb_size'] as String,
      perPage: json['per_page'] as String,
      purity:
          (json['purity'] as List<dynamic>).map((e) => e as String).toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      resolutions: (json['resolutions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      aspectRatios: (json['aspect_ratios'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      toplistRange: json['toplist_range'] as String,
      tagBlacklist: (json['tag_blacklist'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      userBlacklist: (json['user_blacklist'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );
