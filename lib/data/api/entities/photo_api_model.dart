import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:code_test_flutter/data/api/entities/photo_urls_api_model.dart';
part 'photo_api_model.g.dart';

@JsonSerializable()
class PhotoApiModel {
  final String id;
  final String? description;
  @JsonKey(name: 'alt_description')
  final String? altDescription;
  final PhotoUrlsApiModel urls;
  final int? likes;
  final int? views;
  final int? downloads;
  final int? width;
  final int? height;
  final String? color;
  @JsonKey(name: 'created_at')
  final String? createdAt;

  factory PhotoApiModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoApiModelFromJson(json);

  PhotoApiModel({
    required this.id,
    this.description,
    this.altDescription,
    required this.urls,
    this.likes,
    this.views,
    this.downloads,
    this.width,
    this.height,
    this.color,
    this.createdAt,
  });
}