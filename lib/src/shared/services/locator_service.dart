import 'package:get_it/get_it.dart';
import 'package:ren_finance_mobile/src/data/local/post/post_repository.dart';
import 'package:ren_finance_mobile/src/presentation/bloc/post/create_post/create_post_bloc.dart';
import 'package:ren_finance_mobile/src/presentation/screen/bloc/app/multi_bloc_wrapper.dart';
import 'package:ren_finance_mobile/src/shared/app_router.dart';
import 'package:ren_finance_mobile/src/shared/services/sql_services.dart';

final sl = GetIt.instance;
Future<void> locatorServices() async {
  //repositories
  sl.registerLazySingleton<PostRepository>(() => PostLocalRepository());
  //bloc
  sl.registerLazySingleton(() => MultiBlocWrapper(child: sl()));
  sl.registerLazySingleton(() => CreatePostBloc(sl()));
  //shared
  sl.registerLazySingleton(() => AppRouter());
  sl.registerLazySingleton(() => SqliterService());
}
