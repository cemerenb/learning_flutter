import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Uygulamam'),
        ),
        body: const Text('Merhaba'),
        backgroundColor: Colors.orange,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: const Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b'),
          ],
        ));
  }
}
