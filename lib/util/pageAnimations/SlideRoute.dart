import 'package:flutter/material.dart';

enum SlideTransitions {
  SlideRight,
  SlideLeft,
  SlideTop,
  SlideBotom,
}

extension SlideExtension on SlideTransitions {
  Offset get offset {
    switch (this) {
      case SlideTransitions.SlideRight:
        return const Offset(-1, 0);
        break;
      case SlideTransitions.SlideLeft:
        return const Offset(1, 0);
        break;
      case SlideTransitions.SlideTop:
        return const Offset(0, -1);
        break;
      case SlideTransitions.SlideBotom:
        return const Offset(0, 1);
        break;
      default:
        return const Offset(0, 1);
    }
  }
}

class SlideRoute extends PageRouteBuilder {
  final Widget page;
  final SlideTransitions transition;
  SlideRoute({this.page, this.transition})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: transition.offset,
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}
