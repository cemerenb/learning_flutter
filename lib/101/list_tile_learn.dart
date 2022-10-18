import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  final imageUrl = "https://picsum.photos/200";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Card(
          child: ListTile(
            title: Text('My Card'),
            dense: false,
            onTap: () {},
            subtitle: Text('How do you use your card'),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            trailing: Icon(Icons.chevron_right),
          ),
        )
      ]),
    );
  }
}
