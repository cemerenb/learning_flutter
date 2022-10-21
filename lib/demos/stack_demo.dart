import 'package:flutter/material.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 50,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 70,
                  left: 30,
                  child: Row(children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.chevron_left_rounded),
                      iconSize: 30,
                    )
                  ]),
                ),
                Positioned(
                  top: 70,
                  right: 30,
                  child: Row(children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_add_rounded),
                      iconSize: 30,
                    )
                  ]),
                ),
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      'https://www.gezimakinesi.com/wp-content/uploads/2018/07/%C3%B6l%C3%BCdeniz.jpg',
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.photo),
                      fit: BoxFit.fill,
                    ),
                  ),
                  bottom: 35,
                ),
                Positioned(
                    height: 72,
                    width: 250,
                    bottom: 0,
                    child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                              trailing: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: SizedBox(
                                  child: Text(
                                    '\$1500',
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              dense: true,
                              onTap: () {},
                              leading: SizedBox(
                                width: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex: 5,
                                      child: Text(
                                        'Ölü Deniz',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 5,
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on_rounded,
                                            size: 20,
                                            color: Color.fromARGB(
                                                120, 105, 105, 105),
                                          ),
                                          Text('Türkiye',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                    color: const Color.fromARGB(
                                                        120, 105, 105, 105),
                                                  ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ))),
              ],
            ),
          ),
          const Spacer(flex: 50),
        ],
      ),
    );
  }
}
