import 'package:flutter/material.dart';

class ContainerSizedBox extends StatelessWidget {
  const ContainerSizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Text('a' * 600),
            ),
            const SizedBox.shrink(),
            SizedBox.square(
              dimension: 50,
              child: Text("cem" * 10),
            ),
            Container(
              height: 50,
              constraints: const BoxConstraints(
                  maxHeight: 100, minWidth: 20, maxWidth: 150),
              child: Text('a' * 100),
              padding: const EdgeInsets.all(10),
              decoration: creatBox(),
            ),
          ],
        ));
  }
}

// ignore: camel_case_types
class creatBox extends BoxDecoration {
  creatBox()
      : super(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [(Color.fromARGB(150, 46, 158, 68)), Colors.blue],
          ),
        );
}
