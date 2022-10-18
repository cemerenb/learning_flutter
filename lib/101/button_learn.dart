import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child:
                Text('Cem Eren', style: Theme.of(context).textTheme.bodySmall),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Cem Eren')),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add), iconSize: 20),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
            backgroundColor: Colors.white12,
          ),
          InkWell(
            onTap: () {},
            child: const Text('data'),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, right: 40, left: 40),
              child: Text(
                'Place Bid',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
