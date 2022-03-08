import 'package:flutter/material.dart';
import 'package:netflix_sample/views/constant/colors.dart';
import 'package:netflix_sample/views/constant/const_png.dart';
import 'package:netflix_sample/views/screens/home_page/widgets/homepagehorscroll.dart';
import 'package:netflix_sample/views/screens/home_page/widgets/stacked_movie_categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverAppBar(
              centerTitle: true,
              title: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      textWidget('Tv Shows'),
                      textWidget('Movies'),
                      textWidget('Categories'),
                    ],
                  ),
                ],
              ),
              leading: Image.network(
                logo,
              ),
              backgroundColor: Colors.transparent,
              expandedHeight: size.width,
              actions: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.cast,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.network(
                      profile,
                      scale: 15,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            mainimg,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: size.width,
                        height: 40,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              black,
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              floating: true,
              toolbarHeight: 70,
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      color: Colors.black,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Action',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.fiber_manual_record,
                                size: 5,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Adventure',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            'My List',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.white,
                        width: 80,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.play_arrow,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Play',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.info_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            'Info',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const MovieCategories(
                    title: "Popular Movies",
                  ),
                  const MovieCategories(
                    title: 'Released in the past year',
                  ),
                  const MovieCategories(
                    title: 'Trending Now',
                  ),
                  const StackedMovieCategories(title: 'Top 10'),
                   const MovieCategories(
                    title: 'Most Viewed',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

textWidget(String params) {
  return Text(
    params,
    style: const TextStyle(
        color: white, fontSize: 15, fontWeight: FontWeight.bold),
  );
}
