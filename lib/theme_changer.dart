import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
);

class ThemeChanger extends StatefulWidget {
  static ThemeChangerState of(BuildContext context) {
    return context.findAncestorStateOfType();
  }

  ThemeChanger({
    this.childBuilder,
  });

  final Widget Function(BuildContext, ThemeData) childBuilder;

  @override
  ThemeChangerState createState() => ThemeChangerState();
}

class ThemeChangerState extends State<ThemeChanger> {
  Brightness _brightness = Brightness.light;

  set brightness(Brightness brightness) {
    setState(() {
      _brightness = brightness;
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.childBuilder(
      context,
      ThemeData(brightness: _brightness),
    );
  }
}
