import 'package:box_color_provider_1/const.dart';
import 'package:box_color_provider_1/pages/box_tile_display_page.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBackgroundColor,
      body: BoxTileDisplayPage(),
    );
  }
}
