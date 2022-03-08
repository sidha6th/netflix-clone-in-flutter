import 'package:flutter/cupertino.dart';
import 'package:netflix_sample/views/constant/colors.dart';
import 'package:netflix_sample/views/screens/search_page/widgets/curresponding_search_res.dart';
import 'package:netflix_sample/views/screens/search_page/widgets/top_search.dart';

const image = 'https://www.themoviedb.org/t/p/w250_and_h141_face/w70Fi1P2JMa9n4zKaLT4Dqkp4EA.jpg';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CupertinoSearchTextField(
          backgroundColor: grey.withOpacity(0.4),
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: grey,
          ),
          suffixIcon: const Icon(
            CupertinoIcons.xmark_circle_fill,
            color: grey,
          ),
          style: const TextStyle(color: white),
        ),
        const //CurrsSearchRes(),
        TopSearchBody(),
      ],
    );
  }
}
