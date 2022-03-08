import 'package:flutter/material.dart';
import 'package:netflix_sample/views/constant/colors.dart';

class SearchHeading extends StatelessWidget {
  const SearchHeading({
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
        color: white,
      ),
    );
  }
}
