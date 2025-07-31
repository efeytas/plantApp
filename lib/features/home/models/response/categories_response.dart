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

  copyWith({required List<Category> categories, required int currentPage, required int totalPages}) {
    return CategoriesResponse(
      data: categories,
      meta: Meta(
        pagination: Pagination(
          page: currentPage,
          pageSize: meta.pagination.pageSize,
          pageCount: meta.pagination.pageCount,
          total: meta.pagination.total,
        ),
      ),
    );
  }

}

@JsonSerializable()
class Category {
  final int? id;
  final String? name;
  final String? createdAt;
  final String? updatedAt;
  final String? publishedAt;
  final String? title;
  final int? rank;
  final ImageModel? image;

  Category({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.title,
    this.rank,
    this.image,
  });
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class ImageModel {
  final int? id;
  final String? name;
  final int? width;
  final int? height;
  final String? hash;
  final String? ext;
  final String? mime;
  final double? size;
  final String? url;
  final String? alternativeText;
  final String? caption;
  final String? previewUrl;
  final String? provider;
  @JsonKey(name: 'provider_metadata')
  final String? providerMetada;
  final String? createdAt;
  final String? updatedAt;

  ImageModel({
    this.id,
    this.name,
    this.width,
    this.height,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.alternativeText,
    this.caption,
    this.previewUrl,
    this.provider,
    this.providerMetada,
    this.createdAt,
    this.updatedAt,
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
