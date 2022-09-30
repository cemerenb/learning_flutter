import 'package:flutter/material.dart';
import 'package:temel_widget/101/scaffold_learn.dart';

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
      theme: ThemeData.dark(),
      home: const ScaffoldLearnView(),
    );
  } 
}
