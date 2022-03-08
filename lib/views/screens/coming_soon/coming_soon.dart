import 'package:flutter/material.dart';
import 'package:netflix_sample/views/constant/colors.dart';
import 'package:netflix_sample/views/widgets/appbar_widget.dart';

final List<String> movieDetails = [
  'Emotional',
  'Drama',
  'Periodic Piece',
  'US'
];

class HotandNew extends StatelessWidget {
  const HotandNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: const PreferredSize(
        child: AppBarWidget(
          title: 'Coming Soon',
        ),
        preferredSize: Size(
          double.infinity,
          50,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'No Exit',
                      style: TextStyle(
                        color: white,
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      '''No Exit is one of the biggest surprises of the year, shocking viewers with an extremely (in)tense narrative full of suspense, twists, and high levels of entertainment.Damien Power takes the simple premise of his screenwriters and builds an immersive atmosphere through single-location filmmaking, where the camera work and the score are technical highlights in a visually fascinating work.''',
                      style: TextStyle(
                        color: grey.shade400,
                        fontSize: size.width * 0.03,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: SizedBox(
                      width: size.width,
                      child: Row(
                        children: List.generate(
                          movieDetails.length,
                          (index) {
                            String movie = movieDetails[index];
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  movie,
                                  style: const TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 10,right: 10,left: 10),
                                  child: Text(
                                    '.',
                                    style: TextStyle(
                                        color: grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    height: size.height * 0.3,
                    child: Stack(
                      children: [
                        Container(
                          width: size.width,
                          height: size.height * 0.3,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/33wnBK5NxvuKQv0Cxo3wMv0eR7F.jpg'),
                            ),
                          ),
                          child: Center(
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: white,
                              child: CircleAvatar(
                                radius: 28,
                                backgroundColor: black,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.play_arrow,
                                    color: white,
                                    size: 30,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            backgroundColor: black,
                            radius: 20,
                            child: IconButton(
                              icon: const Icon(
                                Icons.volume_off,
                                color: white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                        width: 90,
                        height: 50,
                        image: NetworkImage(
                            'https://fossbytes.com/wp-content/uploads/2022/02/No-Exit-Hulu-Logo.jpg'),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.notifications_none),
                                color: white,
                                iconSize: 30,
                              ),
                              const Text(
                                'Remind Me',
                                style: TextStyle(color: grey, fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.info_outlined,
                                  color: white,
                                ),
                                iconSize: 30,
                              ),
                              const Text(
                                'Info',
                                style: TextStyle(color: grey, fontSize: 10),
                              ),
                             
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                   Text(
                    'Season 2 coming on 15 March',
                    style: TextStyle(
                      color: grey.shade400,
                      fontSize: size.width * 0.03,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
