import 'package:flutter/material.dart';
import 'package:netflix_sample/views/constant/colors.dart';
import 'package:netflix_sample/views/screens/fast_laughs_page/widgets/video_player_controller.dart';

class FastLaughs extends StatelessWidget {
  const FastLaughs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              color: Colors.accents[index % Colors.accents.length],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: black.withOpacity(0.4),
                      child: const Icon(Icons.volume_off),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const  [
                      VideoPlayerControllerItem(label: 'LOL', icon: Icons.emoji_emotions_sharp),
                      VideoPlayerControllerItem(
                          label: 'My List', icon: Icons.add),
                          VideoPlayerControllerItem(
                          label: 'Share', icon: Icons.send),
                          VideoPlayerControllerItem(
                          label: 'Play', icon: Icons.play_arrow),
                    ],
                  ),
                )
              ],
            ),
          ],
        );
      },
    );
  }
}


