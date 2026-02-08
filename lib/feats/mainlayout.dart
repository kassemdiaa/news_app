import 'package:flutter/material.dart';
import 'package:news_app/core/colors_manegar.dart';
import 'package:news_app/feats/home/home_screen.dart';

class Mainlayout extends StatelessWidget {
  const Mainlayout({super.key});

  @override
  Widget build(BuildContext context) {
    Widget view = HomeScreen();
    return Scaffold(
      backgroundColor: ColorsManegar.black,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text('Home', style: TextStyle(color: ColorsManegar.white)),
        ),
        
      ),
      body: view,
    );
  }
}
