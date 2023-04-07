import 'package:flutter/material.dart';

class SlidePageRoute extends PageRouteBuilder {
  final Widget widget;
  final bool isRightToLeft;

  SlidePageRoute({required this.widget, required this.isRightToLeft})
      : super(
          pageBuilder: (_, __, ___) => widget,
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: isRightToLeft ? Offset(1, 0) : Offset(-1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
}
