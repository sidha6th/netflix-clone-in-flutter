import 'package:flutter/material.dart';
import 'package:netflix_sample/views/constant/colors.dart';
import 'package:netflix_sample/views/widgets/main_card.dart';

class StackedMovieCategories extends StatelessWidget {
  const StackedMovieCategories({required this.title, Key? key})
      : super(key: key);
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
                    color: white, fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          height: 150,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (ctx, index) {
              return SizedBox(
                width: size.width * 0.43,
                child: Stack(
                  clipBehavior: Clip.antiAlias,
                  textDirection: TextDirection.ltr,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: MovieCard(
                        width: size.width * 0.3,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Text(
                        '${index + 1}'.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: size.width * 0.3,
                            color: white,
                            fontFamily: 'indexfont'),
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          ),
        ),
      ],
    );
  }
}
