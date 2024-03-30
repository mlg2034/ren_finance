// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatePostModel _$CreatePostModelFromJson(Map<String, dynamic> json) {
  return _CreatePostModel.fromJson(json);
}

/// @nodoc
mixin _$CreatePostModel {
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePostModelCopyWith<CreatePostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostModelCopyWith<$Res> {
  factory $CreatePostModelCopyWith(
          CreatePostModel value, $Res Function(CreatePostModel) then) =
      _$CreatePostModelCopyWithImpl<$Res, CreatePostModel>;
  @useResult
  $Res call({int id, String description, String title});
}

/// @nodoc
class _$CreatePostModelCopyWithImpl<$Res, $Val extends CreatePostModel>
    implements $CreatePostModelCopyWith<$Res> {
  _$CreatePostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePostModelImplCopyWith<$Res>
    implements $CreatePostModelCopyWith<$Res> {
  factory _$$CreatePostModelImplCopyWith(_$CreatePostModelImpl value,
          $Res Function(_$CreatePostModelImpl) then) =
      __$$CreatePostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String description, String title});
}

/// @nodoc
class __$$CreatePostModelImplCopyWithImpl<$Res>
    extends _$CreatePostModelCopyWithImpl<$Res, _$CreatePostModelImpl>
    implements _$$CreatePostModelImplCopyWith<$Res> {
  __$$CreatePostModelImplCopyWithImpl(
      _$CreatePostModelImpl _value, $Res Function(_$CreatePostModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? title = null,
  }) {
    return _then(_$CreatePostModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePostModelImpl extends _CreatePostModel {
  _$CreatePostModelImpl(
      {required this.id, required this.description, required this.title})
      : super._();

  factory _$CreatePostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePostModelImplFromJson(json);

  @override
  final int id;
  @override
  final String description;
  @override
  final String title;

  @override
  String toString() {
    return 'CreatePostModel(id: $id, description: $description, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostModelImplCopyWith<_$CreatePostModelImpl> get copyWith =>
      __$$CreatePostModelImplCopyWithImpl<_$CreatePostModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePostModelImplToJson(
      this,
    );
  }
}

abstract class _CreatePostModel extends CreatePostModel {
  factory _CreatePostModel(
      {required final int id,
      required final String description,
      required final String title}) = _$CreatePostModelImpl;
  _CreatePostModel._() : super._();

  factory _CreatePostModel.fromJson(Map<String, dynamic> json) =
      _$CreatePostModelImpl.fromJson;

  @override
  int get id;
  @override
  String get description;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$CreatePostModelImplCopyWith<_$CreatePostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
