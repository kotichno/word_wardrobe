import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:word_wardrobe/common/tabs/tabs.dart';
import 'package:word_wardrobe/common/tabs/tabs_screen.dart';
import 'package:word_wardrobe/features/dictionary/ui/add_word/add_word_screen.dart';
import 'package:word_wardrobe/features/splash/splash_screen.dart';
import 'package:word_wardrobe/features/trainings/entity/training_type.dart';
import 'package:word_wardrobe/features/trainings/ui/training/training_screen.dart';

const _splashScreenPath = '/';
const _tabsScreenPath = '/tabs';
const _addWordScreenPath = 'add';
const _trainingScreenPath = 'training';

const _tabParamName = 'tab';
const _trainingTypeParamName = 'training';

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
      routes: [
        GoRoute(
          path: _addWordScreenPath,
          builder: (context, state) => const AddWordScreen(),
        ),
        GoRoute(
          path: '$_trainingScreenPath/:$_trainingTypeParamName',
          builder: (context, state) {
            final trainingType = Trainings.values.firstWhere(
              (tab) => tab.name == state.pathParameters[_trainingTypeParamName],
            );
            return TrainingScreen(trainingType: trainingType);
          },
        ),
      ],
    ),
  ],
  debugLogDiagnostics: true,
);

extension GoRouterExtension on BuildContext {
  String get _tabPath {
    final tab = GoRouterState.of(this).pathParameters[_tabParamName];
    return '$_tabsScreenPath/$tab';
  }

  void goSplashScreen() => go(_splashScreenPath);
  void goMainScreen() => go('$_tabsScreenPath/${Tabs.home.name}');
  void goDictionaryScreen() => go('$_tabsScreenPath/${Tabs.dictionary.name}');
  void goTrainingsScreen() => go('$_tabsScreenPath/${Tabs.trainings.name}');
  void goProfileScreen() => go('$_tabsScreenPath/${Tabs.profile.name}');
  void goAddWordScreen() => go('$_tabPath/$_addWordScreenPath');
  void goTrainingScreen(Trainings type) => go('$_tabPath/$_trainingScreenPath/${type.name}');
}
