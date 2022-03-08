import 'package:flutter/material.dart';
import 'package:netflix_sample/views/constant/colors.dart';
import 'package:netflix_sample/views/screens/downloads_page/widgets/stack_image_widget.dart';
import 'package:netflix_sample/views/widgets/appbar_widget.dart';

List imageurl = [
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/3IAghjAacZKP2aomDmZsUDuq812.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zzXFM4FKDG7l1ufrAkwQYv2xvnh.jpg',
];

List<Widget> widgets = [
  const IntroductionSection(),
  const CenterSection(),
  const ButtonSection(),
];

class Download extends StatelessWidget {
  const Download({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: const PreferredSize(
        preferredSize: Size(
          double.infinity,
          50,
        ),
        child: AppBarWidget(
          title: 'Downloads',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return widgets[index];
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: widgets.length,
      ),
    );
  }
}


//====================introduction section==================//
class IntroductionSection extends StatelessWidget {
  const IntroductionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Icon(
              Icons.settings,
              color: white,
            ),
            Text(
              'Smart Downloads',
              style: TextStyle(
                fontSize: 17,
                color: white,
              ),
            ),
          ],
        ),
       const SizedBox(height: 20,),
        const Align(
          alignment: Alignment.topCenter,
          child: Text(
            'Introducing Downloads for you',
            style: TextStyle(
              color: white,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Text(
          'We\'ll download a personlised selection of movie and shows for you,so there\'s always something to watch on your device',
          textAlign: TextAlign.center,
          style: TextStyle(color: white, fontSize: 18),
        ),
      ],
    );
  }
}

//==========================center section==================//

class CenterSection extends StatelessWidget {
  const CenterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: grey.shade800,
                radius: size.width * 0.25,
              ),
              Positioned(
                left: size.width * 0.2,
                bottom: size.height * 0.13,
                child: StackImageWidget(
                  size: size,
                  angle: -20,
                  imageurl: imageurl[0],
                ),
              ),
              Positioned(
                right: size.width * 0.2,
                bottom: size.height * 0.13,
                child: StackImageWidget(
                  size: size,
                  angle: 20,
                  imageurl: imageurl[1],
                ),
              ),
              Positioned(
                bottom: size.height * 0.15,
                child: StackImageWidget(
                  size: size,
                  angle: 0,
                  imageurl: imageurl[2],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//=====================button section===================//
class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              color: blue.shade800,
              onPressed: () {},
              child: const Text(
                'Set up',
                style: TextStyle(
                  fontSize: 20,
                  color: white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          ),
          child: MaterialButton(
            color: white,
            onPressed: () {},
            child: const Text(
              'See what you can Download',
              style: TextStyle(
                  fontSize: 20, color: black, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
