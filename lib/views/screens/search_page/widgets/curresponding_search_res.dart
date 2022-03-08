import 'package:flutter/material.dart';
import 'package:netflix_sample/views/screens/search_page/widgets/search_heading_widget.dart';
import 'package:netflix_sample/views/widgets/main_card.dart';

class CurrsSearchRes extends StatelessWidget {
  const CurrsSearchRes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final size = MediaQuery.of(context).size;
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const SearchHeading(title: 'Movies & TV'),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: GridView.builder(
                itemCount: 20,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 7,
                  mainAxisExtent: size.height*0.2,
                  mainAxisSpacing: 7,
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return  MovieCard(width: size.width*0.3,);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
