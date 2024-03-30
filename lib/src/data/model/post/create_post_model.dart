import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_post_model.g.dart';
part 'create_post_model.freezed.dart';

@freezed
class CreatePostModel with _$CreatePostModel {
  CreatePostModel._();
  factory CreatePostModel(
      {required int id,
      required String description,
      required String title}) = _CreatePostModel;
  factory CreatePostModel.fromJson(Map<String, dynamic> json) =>
      _$CreatePostModelFromJson(json);
}
