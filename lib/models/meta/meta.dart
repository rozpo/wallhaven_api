import 'package:json_annotation/json_annotation.dart';

part 'meta.g.dart';

@JsonSerializable()
class Meta {
  Meta({
    required this.currentPage,
    required this.lastPage,
    required this.perPage,
    required this.total,
  });

  int currentPage;
  int lastPage;
  int perPage;
  int total;

  factory Meta.fromJson(Map<String, dynamic> json) {
    return _$MetaFromJson(json);
  }
}
