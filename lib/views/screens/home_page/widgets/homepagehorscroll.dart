import 'package:flutter/material.dart';
import 'package:netflix_sample/views/constant/colors.dart';
import 'package:netflix_sample/views/widgets/main_card.dart';

class MovieCategories extends StatelessWidget {
  const MovieCategories({required this.title, Key? key}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
       
        SizedBox(
          width: double.infinity,
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (ctx, index) {
              return Row(
                children: [
                  MovieCard(
                    width: size.width * 0.3,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
