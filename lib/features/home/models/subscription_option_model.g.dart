// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionOptionModelImpl _$$SubscriptionOptionModelImplFromJson(
  Map<String, dynamic> json,
) => _$SubscriptionOptionModelImpl(
  title: json['title'] as String,
  description: json['description'] as String,
  isSelected: json['isSelected'] as bool? ?? false,
  isPromoted: json['isPromoted'] as bool? ?? false,
  promotionText: json['promotionText'] as String?,
);

Map<String, dynamic> _$$SubscriptionOptionModelImplToJson(
  _$SubscriptionOptionModelImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'isSelected': instance.isSelected,
  'isPromoted': instance.isPromoted,
  'promotionText': instance.promotionText,
};
