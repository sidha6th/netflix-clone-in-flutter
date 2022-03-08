import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_sample/views/constant/colors.dart';
import 'package:netflix_sample/views/screens/search_page/search_page.dart';
import 'package:netflix_sample/views/screens/search_page/widgets/search_heading_widget.dart';

class TopSearchBody extends StatelessWidget {
  const TopSearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 10,
          ),
          const SearchHeading(
            title: 'Top Searches',
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return const TopSearches();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
                itemCount: 20),
          )
        ],
      ),
    );
  }
}


//====================================================================================//


class TopSearches extends StatelessWidget {
  const TopSearches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width * 0.34,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: const DecorationImage(
              image: NetworkImage(image),
            ),
          ),
        ),
        const Expanded(
          child: Text(
            'Movie name',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: white),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: CircleAvatar(
            radius: 22,
            backgroundColor: white,
            child: CircleAvatar(
              backgroundColor: black,
              radius: 20,
              child: Icon(
                CupertinoIcons.play_fill,
                color: white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
