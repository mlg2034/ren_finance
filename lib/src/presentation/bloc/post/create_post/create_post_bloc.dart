import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ren_finance_mobile/src/data/local/post/post_repository.dart';
import 'package:ren_finance_mobile/src/data/model/post/create_post_model.dart';

part 'create_post_event.dart';
part 'create_post_state.dart';
part 'create_post_bloc.freezed.dart';

class CreatePostBloc extends Bloc<CreatePostEvent, CreatePostState> {
  final PostRepository _repository;
  CreatePostBloc(this._repository) : super(const _Initial()) {
    on<_CreatePost>(_createPost);
  }
  Future<void> _createPost(
      _CreatePost event, Emitter<CreatePostState> emit) async {
    await _repository.createPost(event.createPostModel);
    emit(const CreatePostState.loading());
    if (state is _Loading) return;
    try {
      emit(const CreatePostState.successCreated());
    } catch (error) {
      emit(
        CreatePostState.error(error: 'Failed to create post . Error $error'),
      );
    }
  }
}
