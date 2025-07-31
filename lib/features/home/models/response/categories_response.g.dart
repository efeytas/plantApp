// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponse _$CategoriesResponseFromJson(Map<String, dynamic> json) =>
    CategoriesResponse(
      data:
          (json['data'] as List<dynamic>)
              .map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriesResponseToJson(CategoriesResponse instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  publishedAt: json['publishedAt'] as String?,
  title: json['title'] as String?,
  rank: (json['rank'] as num?)?.toInt(),
  image:
      json['image'] == null
          ? null
          : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'publishedAt': instance.publishedAt,
  'title': instance.title,
  'rank': instance.rank,
  'image': instance.image,
};

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => ImageModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  hash: json['hash'] as String?,
  ext: json['ext'] as String?,
  mime: json['mime'] as String?,
  size: (json['size'] as num?)?.toDouble(),
  url: json['url'] as String?,
  alternativeText: json['alternativeText'] as String?,
  caption: json['caption'] as String?,
  previewUrl: json['previewUrl'] as String?,
  provider: json['provider'] as String?,
  providerMetada: json['provider_metadata'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'width': instance.width,
      'height': instance.height,
      'hash': instance.hash,
      'ext': instance.ext,
      'mime': instance.mime,
      'size': instance.size,
      'url': instance.url,
      'alternativeText': instance.alternativeText,
      'caption': instance.caption,
      'previewUrl': instance.previewUrl,
      'provider': instance.provider,
      'provider_metadata': instance.providerMetada,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
  pagination: Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
  'pagination': instance.pagination,
};

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
  page: (json['page'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  pageCount: (json['pageCount'] as num).toInt(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'pageCount': instance.pageCount,
      'total': instance.total,
    };
