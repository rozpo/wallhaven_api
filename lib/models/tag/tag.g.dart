// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
      data: json['data'] == null
          ? null
          : TagData.fromJson(json['data'] as Map<String, dynamic>),
    );

TagData _$TagDataFromJson(Map<String, dynamic> json) => TagData(
      id: json['id'] as int,
      name: json['name'] as String,
      alias: json['alias'] as String,
      categoryId: json['category_id'] as int,
      category: json['category'] as String,
      purity: json['purity'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
