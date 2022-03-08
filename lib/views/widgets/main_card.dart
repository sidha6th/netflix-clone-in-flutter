import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({required this.width,Key? key}) : super(key: key);
  final double width;
  final image =
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
    );
  }
}
