
import 'package:json_annotation/json_annotation.dart';

part 'questions_response.g.dart';

@JsonSerializable()
class QuestionsResponse {
  int? id;
  String? title;
  String? subtitle;
  @JsonKey(name: 'image_uri')
  String? imagePath;
  String? uri;
  int? order;

  QuestionsResponse({
    this.id,
    this.title,
    this.subtitle,
    this.imagePath,
    this.uri,
    this.order,
  });

  factory QuestionsResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionsResponseToJson(this);

}