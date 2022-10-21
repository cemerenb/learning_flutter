import 'dart:async';
import 'package:flutter/material.dart';
import 'package:temel_widget/core/counter_hello_button.dart';
import '../product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int countValue = 0;
  final String _reset = LanguageItems.Reset;

  void _updateCounter(bool isTrue) {
    if (isTrue) {
      countValue = countValue + 1;
    } else {
      countValue = countValue - 1;
    }
    setState(() {});
  }

  Timer? timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    countValue = 0;
                    setState(() {});
                  },
                  child: Text(_reset))
            ],
          ),
          Row(
            children: [
              _deincrementButton(),
              _incrementButton(),
            ],
          ),
        ],
      ),
      body: Column(children: [
        Center(
          child: Text(
            countValue.toString(),
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        const CounterHelloButton(),
        const Placeholder(),
      ]),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }
}
