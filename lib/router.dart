import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/screens.dart';

class ScreenPaths {
  ScreenPaths._();

  static const String dashboard = '/dashboard';
  static const String characters = '/characters';
  static const String locations = '/locations';
  static const String episodes = '/episodes';
  static const String characterDetail = '/character/detail';
}

class CustomRouter {
  CustomRouter._();

  static Map<String, WidgetBuilder> routes = {
    ScreenPaths.dashboard: (context) => const DashboardPage(),
    ScreenPaths.characters: (context) => const CharactersPage(),
    ScreenPaths.locations: (context) => const LocationsPage(),
    ScreenPaths.episodes: (context) => const EpisodesPage(),
    ScreenPaths.characterDetail: (context) => const CharacterDetailPage(),
  };
}
