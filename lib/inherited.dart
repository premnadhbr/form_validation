import 'package:flutter/material.dart';

class inherited extends InheritedWidget {
  final int count;

  inherited({required this.count, required Widget child}) : super(child: child);

  static int of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<inherited>()!.count;
  }

  @override
  bool updateShouldNotify(covariant inherited oldWidget) {
    return oldWidget.count != count;
  }
}
