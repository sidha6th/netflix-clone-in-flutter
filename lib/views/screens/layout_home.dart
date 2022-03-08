import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_sample/controller/controller.dart';
import 'package:netflix_sample/views/constant/colors.dart';
import 'package:netflix_sample/views/constant/pages.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Obx(
          () {
            return pages[controller.index.value];
          },
        ),
      ),
      bottomNavigationBar: Obx(
        () {
          return BottomNavigationBar(
            selectedFontSize: 13,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedItemColor: white,
            unselectedItemColor: grey,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            backgroundColor: black,
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.index.value,
            onTap: (newindex) {
              controller.index.value = newindex;
            },
            items: const [
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.home,
                  ),
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  label: 'Home',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.video_collection,
                  ),
                  icon: Icon(
                    Icons.video_collection_outlined,
                  ),
                  label: 'Coming Soon'),
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.emoji_emotions,
                  ),
                  icon: Icon(
                    Icons.emoji_emotions_outlined,
                  ),
                  label: 'Fast Laughs'),
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.search,
                  ),
                  icon: Icon(
                    Icons.search,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.download_for_offline),
                  icon: Icon(
                    Icons.download_for_offline_outlined,
                  ),
                  label: 'Download'),
            ],
          );
        },
      ),
    );
  }
}
