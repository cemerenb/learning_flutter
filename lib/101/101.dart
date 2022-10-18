import 'package:flutter/material.dart';

class TextLearn extends StatelessWidget {
  TextLearn({Key? key}) : super(key: key);
  final String name = 'Cem';
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        (ProjectKeys().hello + ' $name ${name.length}'),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.right,
        style: Theme.of(context)
            .textTheme
            .headline4
            ?.copyWith(color: ProjectColor.welcomeColor),
      ),
      Text(
        (ProjectKeys().welcome + ' $name ${name.length}'),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.right,
        style: Theme.of(context)
            .textTheme
            .headline4
            ?.copyWith(color: ProjectColor.welcomeColor),
      ),
    ])));
  }
}

class ProjectStyle {
  static TextStyle welcomeStyle = const TextStyle(
    fontStyle: FontStyle.italic,
    decoration: TextDecoration.underline,
    letterSpacing: 2,
    wordSpacing: 2,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}

class ProjectColor {
  static Color welcomeColor = Colors.yellow;
}

class ProjectKeys {
  final String hello = 'Merhaba';
  final String welcome = 'Tekrar Hoşgeldin';
}
