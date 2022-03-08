
import 'package:flutter/material.dart';
import 'package:netflix_sample/views/screens/downloads_page/download_page.dart';
import 'package:netflix_sample/views/screens/fast_laughs_page/fast_laughs.dart';
import 'package:netflix_sample/views/screens/home_page/home_page.dart';
import 'package:netflix_sample/views/screens/coming_soon/coming_soon.dart';
import 'package:netflix_sample/views/screens/search_page/search_page.dart';

const List<Widget> pages = [
  HomePage(),
  HotandNew(),
  FastLaughs(),
  Search(),
  Download()
];
