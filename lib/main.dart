import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temel_widget/101/custom_widget_learn.dart';
import 'package:temel_widget/101/indicator_learn.dart';
import 'package:temel_widget/101/list_tile_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "İlk uygulamam",
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark().copyWith(
        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.white),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      themeMode: ThemeMode.system,
      theme: ThemeData.light().copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.white),
        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      home: const ListTileLearn(),
    );
  }
}
