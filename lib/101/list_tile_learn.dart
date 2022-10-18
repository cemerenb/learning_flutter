import 'package:flutter/material.dart';
import 'package:temel_widget/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Card(
          child: ListTile(
            title: const Text('My Card'),
            dense: true,
            onTap: () {},
            subtitle: const Text('How do you use your card'),
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              // ignore: prefer_const_constructors
              child: RandomImage(),
            ),
            trailing: const Icon(Icons.chevron_right),
          ),
        )
      ]),
    );
  }
}
