import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  const IconLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giriş'),
        leading: const Icon(Icons.chevron_left),
      ),
      body: Column(children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.message_sharp,
            color: Theme.of(context).backgroundColor,
            size: IconSize().iconsmall,
          ),
          splashRadius: 25,
        )
      ]),
    );
  }
}

class IconSize {
  final double iconsmall = 30;
}

class IconColors {
  final Color violet = Color(0xff9A3FEE);
}
