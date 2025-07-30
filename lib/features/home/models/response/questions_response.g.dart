// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionsResponse _$QuestionsResponseFromJson(Map<String, dynamic> json) =>
    QuestionsResponse(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      imagePath: json['image_uri'] as String?,
      uri: json['uri'] as String?,
      order: (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$QuestionsResponseToJson(QuestionsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image_uri': instance.imagePath,
      'uri': instance.uri,
      'order': instance.order,
    };
