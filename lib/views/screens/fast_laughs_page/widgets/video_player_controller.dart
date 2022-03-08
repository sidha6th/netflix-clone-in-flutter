import 'package:flutter/material.dart';
import 'package:netflix_sample/views/constant/colors.dart';

class VideoPlayerControllerItem extends StatelessWidget {
  const VideoPlayerControllerItem(
      {required this.label, required this.icon, Key? key})
      : super(key: key);
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
            color: white,
          ),
          Text(
            label,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
          )
        ],
      ),
    );
  }
}
