import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:word_wardrobe/common/tabs/tabs.dart';
import 'package:word_wardrobe/common/tabs/tabs_screen.dart';
import 'package:word_wardrobe/features/splash/splash_screen.dart';

const _splashScreenPath = '/';
const _tabsScreenPath = '/tabs';
const _tabParamName = 'tab';

final goRouter = GoRouter(
  initialLocation: _splashScreenPath,
  routes: [
    GoRoute(
      path: _splashScreenPath,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '$_tabsScreenPath/:$_tabParamName',
      builder: (context, state) {
        final tab = Tabs.values.firstWhere(
          (tab) => tab.name == state.pathParameters[_tabParamName],
        );
        return TabsScreen(tab: tab);
      },
    ),
  ],
  debugLogDiagnostics: true,
);

extension GoRouterExtension on BuildContext {
  void goSplashScreen() => go(_splashScreenPath);
  void goMainScreen() => go('$_tabsScreenPath/${Tabs.home.name}');
  void goDictionaryScreen() => go('$_tabsScreenPath/${Tabs.dictionary.name}');
  void goTrainingsScreen() => go('$_tabsScreenPath/${Tabs.trainings.name}');
  void goProfileScreen() => go('$_tabsScreenPath/${Tabs.profile.name}');
}
