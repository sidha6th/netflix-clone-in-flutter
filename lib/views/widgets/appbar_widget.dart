import 'package:flutter/material.dart';
import 'package:netflix_sample/views/constant/colors.dart';
import 'package:netflix_sample/views/constant/const_png.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({required this.title, Key? key}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: black,
      title: Text(
        title,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.cast),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            profile,
            width: 28,
            height: 25,
          ),
        )
      ],
    );
  }
}
