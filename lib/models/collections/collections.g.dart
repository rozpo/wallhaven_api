// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Collections _$CollectionsFromJson(Map<String, dynamic> json) => Collections(
      data: (json['data'] as List<dynamic>)
          .map((e) => CollectionsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

CollectionsData _$CollectionsDataFromJson(Map<String, dynamic> json) =>
    CollectionsData(
      id: json['id'] as int,
      label: json['label'] as String,
      views: json['views'] as int,
      public: json['public'] as int,
      count: json['count'] as int,
    );
