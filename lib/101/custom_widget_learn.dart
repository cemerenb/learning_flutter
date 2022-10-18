import 'package:flutter/material.dart';

const String title = 'food';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
              child: CustomFoodButton(
            title: title,
            onPressed: () {},
          )),
          const SizedBox(height: 200),
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: CustomFoodButton(title: title, onPressed: () {})),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normalPadding2x = const EdgeInsets.all(16.0);
}

class CustomFoodButton extends StatelessWidget {
  const CustomFoodButton(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: _ColorsUtility().redColor, shape: const StadiumBorder()),
      onPressed: onPressed,
      child: Padding(
        padding: _PaddingUtility().normalPadding,
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
              color: _ColorsUtility().whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
