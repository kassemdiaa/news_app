import 'package:flutter/material.dart';
import 'package:news_app/core/colors_manegar.dart';
import 'package:news_app/feats/category/category_screen.dart';
import 'package:news_app/feats/home/home_screen.dart';
import 'package:news_app/feats/models/category_model.dart';

class Mainlayout extends StatefulWidget {
  const Mainlayout({super.key});

  @override
  State<Mainlayout> createState() => _MainlayoutState();
}

class _MainlayoutState extends State<Mainlayout> {
  late Widget view = HomeScreen(onCategoryItemClicked: onCategoryItemClicked);
late String title ='Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.black,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(title, style: TextStyle(color: ColorsManegar.white)),
        ),
      ),
      body: view,
    );
  }

  void onCategoryItemClicked(CategoryModel selectedCategory) {
    view = CategoryScreen();
    title = selectedCategory.title;
    setState(() {});
  }
}
