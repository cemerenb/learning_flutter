import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            height: 500,
            color: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              height: 100,
              color: Colors.blueGrey,
            ),
          ),
          Positioned(
              top: 105,
              height: 200,
              width: 100,
              child: Container(
                color: Colors.green,
              ))
        ],
      ),
    );
  }
}
