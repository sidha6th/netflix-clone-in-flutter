import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_sample/views/constant/colors.dart';

class StackImageWidget extends StatelessWidget {
  const StackImageWidget({
    required this.angle,
    required this.imageurl,
    required this.size,
    Key? key,
  }) : super(key: key);
  final double angle;
  final String imageurl;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        width: size.width * 0.25,
        height: size.height * 0.20,
        decoration: BoxDecoration(
          color: black,
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imageurl,
            ),
          ),
        ),
      ),
    );
  }
}
