import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:state_api/routing/route_names.dart';
import 'package:state_api/views/about/about_view.dart';
import 'package:state_api/views/episodes/episodes_view.dart';
import 'package:state_api/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(const HomeView(), settings);
    case AboutRoute:
      return _getPageRoute(const AboutView(), settings);
    case EpisodesRoute:
      return _getPageRoute(const EpisodesView(), settings);
    default:
      return _getPageRoute(const HomeView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name.toString());
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({required this.child, required this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
