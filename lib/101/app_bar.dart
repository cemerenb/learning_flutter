import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);
  final String _title = 'Naber Yarram';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_email_unread_sharp),
            splashRadius: 22,
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                ),
                height: 16,
                width: 16,
              ),
            ),
          )
        ],
      ),
      body: Column(children: const []),
    );
  }
}
