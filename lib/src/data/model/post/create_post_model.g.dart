// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePostModelImpl _$$CreatePostModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePostModelImpl(
      id: json['id'] as int,
      description: json['description'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$CreatePostModelImplToJson(
        _$CreatePostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'title': instance.title,
    };
