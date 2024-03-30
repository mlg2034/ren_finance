part of 'create_post_bloc.dart';

@freezed
class CreatePostState with _$CreatePostState {
  const factory CreatePostState.initial() = _Initial;
  const factory CreatePostState.successCreated()=_SuccessCreated;
  const factory CreatePostState.loading()=_Loading;
  const factory CreatePostState.error({required String error})=_Error;
}
