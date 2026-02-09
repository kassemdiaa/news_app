import 'package:flutter/material.dart';
import 'package:news_app/core/colors_manegar.dart';
import 'package:news_app/feats/category/category_screen.dart';
import 'package:news_app/feats/drawer/custom_drawr.dart';
import 'package:news_app/feats/home/home_screen.dart';
import 'package:news_app/feats/models/category_model.dart';

class Mainlayout extends StatefulWidget {
  const Mainlayout({super.key});

  @override
  State<Mainlayout> createState() => _MainlayoutState();
}

class _MainlayoutState extends State<Mainlayout> {
  late Widget view = HomeScreen(onCategoryItemClicked: onCategoryItemClicked);
  late String title = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.black,
      appBar: AppBar(
        foregroundColor: ColorsManegar.white,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Text(title, style: TextStyle(color: ColorsManegar.white)),
      ),
      drawer: CustomDrawr(goToHome: goToHome),
      body: view,
    );
  }

  void goToHome() {
    view = HomeScreen(onCategoryItemClicked: onCategoryItemClicked);
    title = 'Home';
    Navigator.pop(context);
    setState(() {});
  }

  void onCategoryItemClicked(CategoryModel selectedCategory) {
    view = CategoryScreen(category: selectedCategory,);
    title = selectedCategory.title;
    setState(() {});
  }
}
