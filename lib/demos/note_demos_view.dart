import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temel_widget/101/stateless_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);
  final String title = 'Create your first note';
  final String p1 = 'merhaba';
  final String _importnotes = 'Import Notes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImages(path: ImageItems().bookpath),
            _TitleWidget(title: title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubtitleWidget(p1: p1),
            ),
            const Spacer(),
            _creatButton(context),
            TextButton(onPressed: () {}, child: Text(_importnotes)),
            const SizedBox(height: ButtonHeights.buttonNormalHeight)
          ],
        ),
      ),
    );
  }

  ElevatedButton _creatButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
            height: ButtonHeights.buttonNormalHeight,
            child: Center(
                child: Text(
              'Creat a note',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.white),
            ))));
  }
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}

class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget({
    Key? key,
    // ignore: unused_element
    required this.p1, this.textAlign,
  }) : super(key: key);
  final TextAlign? textAlign;
  final String p1;

  @override
  Widget build(BuildContext context) {
    return Text(
      p1 * 15,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(fontWeight: FontWeight.w400, color: Colors.black),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}
