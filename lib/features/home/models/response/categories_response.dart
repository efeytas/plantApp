import 'package:json_annotation/json_annotation.dart';

part 'categories_response.g.dart';

@JsonSerializable()
class CategoriesResponse {
  final List<Category> data;
  final Meta meta;

  CategoriesResponse({required this.data, required this.meta});

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesResponseToJson(this);
}

@JsonSerializable()
class Category {
  final int id;
  final String name;
  final String createdAt;
  final String updatedAt;
  final String publishedAt;
  final String title;
  final int rank;
  final ImageModel image;

  Category({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.title,
    required this.rank,
    required this.image,
  });
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class ImageModel {
  final int id;
  final String name;
  final int width;
  final int height;
  final String hash;
  final String ext;
  final String mime;
  final double size;
  final String url;
  final String? alternativeText;
  final String? caption;
  final String? previewUrl;
  final String provider;
  @JsonKey(name: 'provider_metadata')
  final String? providerMetada;
  final String createdAt;
  final String updatedAt;

  ImageModel({
    required this.id,
    required this.name,
    required this.width,
    required this.height,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.size,
    required this.url,
    required this.provider,
    required this.createdAt,
    required this.updatedAt,
    this.alternativeText,
    this.caption,
    this.previewUrl,
    this.providerMetada,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}

@JsonSerializable()
class Meta {
  final Pagination pagination;

  Meta({required this.pagination});

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class Pagination {
  final int page;
  final int pageSize;
  final int pageCount;
  final int total;

  Pagination({
    required this.page,
    required this.pageSize,
    required this.pageCount,
    required this.total,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}
