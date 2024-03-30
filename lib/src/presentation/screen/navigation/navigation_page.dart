import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ren_finance_mobile/src/shared/app_router.dart';

@RoutePage()
class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage>
    with TickerProviderStateMixin {
  TabController? tabController;
  int? index;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [InfoRoute(), TaxesRoute(), ProfileRoute()],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (value) {
              if (tabsRouter.activeIndex == value) {
                tabsRouter.popTop();
              } else {
                tabsRouter.setActiveIndex(value);
              }
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.newspaper,
                  ),
                  
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.monetization_on_outlined,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_2_outlined,
                  ),
                  label: ''),
            ]);
      },
    );
  }
}
