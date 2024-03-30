import 'package:auto_route/auto_route.dart';
import 'package:ren_finance_mobile/src/presentation/screen/create_post/create_post_page.dart';
import 'package:ren_finance_mobile/src/presentation/screen/info/info_page.dart';
import 'package:ren_finance_mobile/src/presentation/screen/navigation/navigation_page.dart';
import 'package:ren_finance_mobile/src/presentation/screen/profile/profile_page.dart';
import 'package:ren_finance_mobile/src/presentation/screen/taxes/taxes_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: NavigationRoute.page,
          initial: true,
          children: [
            AutoRoute(page: InfoRoute.page, ),
            AutoRoute(page: ProfileRoute.page),
            AutoRoute(page: TaxesRoute.page)
          ],
        ), 
        AutoRoute(page: CreatePostRoute.page),
      ];
}
