// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SubscriptionOptionModel _$SubscriptionOptionModelFromJson(
  Map<String, dynamic> json,
) {
  return _SubscriptionOptionModel.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionOptionModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  bool get isPromoted => throw _privateConstructorUsedError;
  String? get promotionText => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionOptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionOptionModelCopyWith<SubscriptionOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionOptionModelCopyWith<$Res> {
  factory $SubscriptionOptionModelCopyWith(
    SubscriptionOptionModel value,
    $Res Function(SubscriptionOptionModel) then,
  ) = _$SubscriptionOptionModelCopyWithImpl<$Res, SubscriptionOptionModel>;
  @useResult
  $Res call({
    String title,
    String description,
    bool isSelected,
    bool isPromoted,
    String? promotionText,
  });
}

/// @nodoc
class _$SubscriptionOptionModelCopyWithImpl<
  $Res,
  $Val extends SubscriptionOptionModel
>
    implements $SubscriptionOptionModelCopyWith<$Res> {
  _$SubscriptionOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? isSelected = null,
    Object? isPromoted = null,
    Object? promotionText = freezed,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            isSelected:
                null == isSelected
                    ? _value.isSelected
                    : isSelected // ignore: cast_nullable_to_non_nullable
                        as bool,
            isPromoted:
                null == isPromoted
                    ? _value.isPromoted
                    : isPromoted // ignore: cast_nullable_to_non_nullable
                        as bool,
            promotionText:
                freezed == promotionText
                    ? _value.promotionText
                    : promotionText // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubscriptionOptionModelImplCopyWith<$Res>
    implements $SubscriptionOptionModelCopyWith<$Res> {
  factory _$$SubscriptionOptionModelImplCopyWith(
    _$SubscriptionOptionModelImpl value,
    $Res Function(_$SubscriptionOptionModelImpl) then,
  ) = __$$SubscriptionOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String description,
    bool isSelected,
    bool isPromoted,
    String? promotionText,
  });
}

/// @nodoc
class __$$SubscriptionOptionModelImplCopyWithImpl<$Res>
    extends
        _$SubscriptionOptionModelCopyWithImpl<
          $Res,
          _$SubscriptionOptionModelImpl
        >
    implements _$$SubscriptionOptionModelImplCopyWith<$Res> {
  __$$SubscriptionOptionModelImplCopyWithImpl(
    _$SubscriptionOptionModelImpl _value,
    $Res Function(_$SubscriptionOptionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? isSelected = null,
    Object? isPromoted = null,
    Object? promotionText = freezed,
  }) {
    return _then(
      _$SubscriptionOptionModelImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        isSelected:
            null == isSelected
                ? _value.isSelected
                : isSelected // ignore: cast_nullable_to_non_nullable
                    as bool,
        isPromoted:
            null == isPromoted
                ? _value.isPromoted
                : isPromoted // ignore: cast_nullable_to_non_nullable
                    as bool,
        promotionText:
            freezed == promotionText
                ? _value.promotionText
                : promotionText // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionOptionModelImpl implements _SubscriptionOptionModel {
  const _$SubscriptionOptionModelImpl({
    required this.title,
    required this.description,
    this.isSelected = false,
    this.isPromoted = false,
    this.promotionText,
  });

  factory _$SubscriptionOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionOptionModelImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey()
  final bool isSelected;
  @override
  @JsonKey()
  final bool isPromoted;
  @override
  final String? promotionText;

  @override
  String toString() {
    return 'SubscriptionOptionModel(title: $title, description: $description, isSelected: $isSelected, isPromoted: $isPromoted, promotionText: $promotionText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionOptionModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.isPromoted, isPromoted) ||
                other.isPromoted == isPromoted) &&
            (identical(other.promotionText, promotionText) ||
                other.promotionText == promotionText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    description,
    isSelected,
    isPromoted,
    promotionText,
  );

  /// Create a copy of SubscriptionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionOptionModelImplCopyWith<_$SubscriptionOptionModelImpl>
  get copyWith => __$$SubscriptionOptionModelImplCopyWithImpl<
    _$SubscriptionOptionModelImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionOptionModelImplToJson(this);
  }
}

abstract class _SubscriptionOptionModel implements SubscriptionOptionModel {
  const factory _SubscriptionOptionModel({
    required final String title,
    required final String description,
    final bool isSelected,
    final bool isPromoted,
    final String? promotionText,
  }) = _$SubscriptionOptionModelImpl;

  factory _SubscriptionOptionModel.fromJson(Map<String, dynamic> json) =
      _$SubscriptionOptionModelImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  bool get isSelected;
  @override
  bool get isPromoted;
  @override
  String? get promotionText;

  /// Create a copy of SubscriptionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionOptionModelImplCopyWith<_$SubscriptionOptionModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
