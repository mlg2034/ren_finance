import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ren_finance_mobile/src/data/model/post/create_post_model.dart';
import 'package:ren_finance_mobile/src/presentation/bloc/post/create_post/create_post_bloc.dart';
import 'package:ren_finance_mobile/src/presentation/common_widgets/custom_app_bar.dart';
import 'package:ren_finance_mobile/src/presentation/common_widgets/custom_button.dart';
import 'package:ren_finance_mobile/src/presentation/common_widgets/custom_text_field.dart';
import 'package:ren_finance_mobile/src/presentation/theme/color_theme.dart';
import 'package:ren_finance_mobile/src/presentation/theme/text_theme.dart';
import 'package:ren_finance_mobile/src/shared/app_router.dart';

@RoutePage()
class CreatePostPage extends StatelessWidget {
  const CreatePostPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _postTitleController = TextEditingController();
    final TextEditingController _postDescriptionController =
        TextEditingController();
    final createPostBloc = context.read<CreatePostBloc>();
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Create Post',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              hintText: 'Post title',
              controller: _postTitleController,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hintText: 'Post description',
              maxLines: 6,
              controller: _postDescriptionController,
            ),
            const Spacer(),
            BlocConsumer<CreatePostBloc, CreatePostState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  successCreated: () {
                    _postDescriptionController.clear();
                    _postTitleController.clear();
                    context.router.replace(const InfoRoute());
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(orElse: () {
                  return CustomButton(
                    title: 'Create',
                    onTap: () {
                      if (_postDescriptionController.text.isNotEmpty &&
                          _postTitleController.text.isNotEmpty) {
                        final CreatePostModel createPostModel = CreatePostModel(
                            id: DateTime.now().microsecond,
                            description: _postDescriptionController.text,
                            title: _postTitleController.text);
                        createPostBloc.add(
                          CreatePostEvent.createPost(
                              createPostModel: createPostModel),
                        );
                      } else {
                        final SnackBar snackBar = SnackBar(
                            content: Center(
                                child: Text(
                          'Fill in all the fields',
                          style:
                              AppFonts.w100s16.copyWith(color: AppColors.white),
                        )));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                  );
                }, loading: () {
                  return const CustomButton(
                    child: CircularProgressIndicator.adaptive(),
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
    