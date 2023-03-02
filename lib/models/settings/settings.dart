import 'package:json_annotation/json_annotation.dart';

part 'settings.g.dart';

@JsonSerializable()
class Settings {
  Settings({
    required this.data,
  });

  SettingsData data;

  factory Settings.fromJson(Map<String, dynamic> json) {
    return _$SettingsFromJson(json);
  }
}

@JsonSerializable()
class SettingsData {
  SettingsData({
    required this.thumbSize,
    required this.perPage,
    required this.purity,
    required this.categories,
    required this.resolutions,
    required this.aspectRatios,
    required this.toplistRange,
    required this.tagBlacklist,
    required this.userBlacklist,
  });

  String thumbSize;
  String perPage;
  List<String> purity;
  List<String> categories;
  List<String> resolutions;
  List<String> aspectRatios;
  String toplistRange;
  List<String> tagBlacklist;
  List<String> userBlacklist;

  factory SettingsData.fromJson(Map<String, dynamic> json) {
    return _$SettingsDataFromJson(json);
  }
}
