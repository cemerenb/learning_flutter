import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          PngImages(path: ImageItems().bookpath),
          Image.network(
              'https://www.metoffice.gov.uk/binaries/content/gallery/metofficegovuk/images/research/weather/satimageofthemonth/2018_dec07_aqua_swirly_thing.png')
        ],
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}

class ImageItems {
  final String bookpath = "book";
}

class PngImages extends StatelessWidget {
  const PngImages({Key? key, required this.path}) : super(key: key);
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/$path.png',
      errorBuilder: (context, error, stackTrace) => const Icon(Icons.book),
      fit: BoxFit.cover,
    );
  }
}
