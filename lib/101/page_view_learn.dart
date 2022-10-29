import 'package:flutter/material.dart';
import 'package:temel_widget/101/icon_learn.dart';
import 'package:temel_widget/101/list_tile_learn.dart';
import 'package:temel_widget/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        controller: PageController(viewportFraction: 1),
        children: [
          const ListTileLearn(),
          const IconLearnView(),
          const StackLearn(),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
