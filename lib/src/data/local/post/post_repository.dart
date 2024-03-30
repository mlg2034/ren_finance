import 'package:ren_finance_mobile/src/data/model/post/create_post_model.dart';
import 'package:ren_finance_mobile/src/shared/services/sql_services.dart';
import 'package:sqflite/sqflite.dart';

abstract class PostRepository {
  Future<int> createPost(CreatePostModel createPostModel);
  Future<List<CreatePostModel>> getPostList();
  Future<void> deletePost(String id);
}

class PostLocalRepository implements PostRepository {
  @override
  Future<int> createPost(CreatePostModel createPostModel) async {
    final Database db = await SqliterService().initializeDB();
    final id = await db.insert("CreatePost", createPostModel.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    return id;
  }

  @override
  Future<List<CreatePostModel>> getPostList() async {
    final Database db = await SqliterService().initializeDB();
    final List<Map<String, Object?>> queryResult = await db.query(
      'CreatePost',
    );
    return queryResult.map((e) => CreatePostModel.fromJson(e)).toList();
  }

  @override
  Future<void> deletePost(String id) async {
    final Database db = await SqliterService().initializeDB();
    try {
      await db.delete('CreatePost', where: 'id=?', whereArgs: [id]);
    } catch (error) {
      throw Exception('somethink went wrong . Error $error');
    }
  }
}
