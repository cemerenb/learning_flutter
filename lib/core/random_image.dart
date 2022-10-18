import 'package:flutter/material.dart';

// ignore: prefer_const_declarations

class RandomImage extends StatelessWidget {
  const RandomImage({Key? key, this.height = 100}) : super(key: key);
  final imageUrl = "https://picsum.photos/200";
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }
}
