// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paywall_feature_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaywallFeatureModel _$PaywallFeatureModelFromJson(Map<String, dynamic> json) {
  return _PaywallFeatureModel.fromJson(json);
}

/// @nodoc
mixin _$PaywallFeatureModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  /// Serializes this PaywallFeatureModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaywallFeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaywallFeatureModelCopyWith<PaywallFeatureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaywallFeatureModelCopyWith<$Res> {
  factory $PaywallFeatureModelCopyWith(
    PaywallFeatureModel value,
    $Res Function(PaywallFeatureModel) then,
  ) = _$PaywallFeatureModelCopyWithImpl<$Res, PaywallFeatureModel>;
  @useResult
  $Res call({String title, String description, String imagePath});
}

/// @nodoc
class _$PaywallFeatureModelCopyWithImpl<$Res, $Val extends PaywallFeatureModel>
    implements $PaywallFeatureModelCopyWith<$Res> {
  _$PaywallFeatureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaywallFeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? imagePath = null,
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
            imagePath:
                null == imagePath
                    ? _value.imagePath
                    : imagePath // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaywallFeatureModelImplCopyWith<$Res>
    implements $PaywallFeatureModelCopyWith<$Res> {
  factory _$$PaywallFeatureModelImplCopyWith(
    _$PaywallFeatureModelImpl value,
    $Res Function(_$PaywallFeatureModelImpl) then,
  ) = __$$PaywallFeatureModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, String imagePath});
}

/// @nodoc
class __$$PaywallFeatureModelImplCopyWithImpl<$Res>
    extends _$PaywallFeatureModelCopyWithImpl<$Res, _$PaywallFeatureModelImpl>
    implements _$$PaywallFeatureModelImplCopyWith<$Res> {
  __$$PaywallFeatureModelImplCopyWithImpl(
    _$PaywallFeatureModelImpl _value,
    $Res Function(_$PaywallFeatureModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaywallFeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? imagePath = null,
  }) {
    return _then(
      _$PaywallFeatureModelImpl(
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
        imagePath:
            null == imagePath
                ? _value.imagePath
                : imagePath // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaywallFeatureModelImpl implements _PaywallFeatureModel {
  const _$PaywallFeatureModelImpl({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  factory _$PaywallFeatureModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaywallFeatureModelImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'PaywallFeatureModel(title: $title, description: $description, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaywallFeatureModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, imagePath);

  /// Create a copy of PaywallFeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaywallFeatureModelImplCopyWith<_$PaywallFeatureModelImpl> get copyWith =>
      __$$PaywallFeatureModelImplCopyWithImpl<_$PaywallFeatureModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaywallFeatureModelImplToJson(this);
  }
}

abstract class _PaywallFeatureModel implements PaywallFeatureModel {
  const factory _PaywallFeatureModel({
    required final String title,
    required final String description,
    required final String imagePath,
  }) = _$PaywallFeatureModelImpl;

  factory _PaywallFeatureModel.fromJson(Map<String, dynamic> json) =
      _$PaywallFeatureModelImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get imagePath;

  /// Create a copy of PaywallFeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaywallFeatureModelImplCopyWith<_$PaywallFeatureModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
