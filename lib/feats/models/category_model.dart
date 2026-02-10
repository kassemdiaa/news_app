import 'dart:ui';

import 'package:news_app/core/assets_maneger.dart';
import 'package:news_app/core/colors_manegar.dart';

class CategoryModel {
  String id;
  String title;
  String imagePath;
  Color bgColor;
  CategoryModel({
    required this.id,
    required this.title,
    required this.imagePath,
    required this.bgColor,
  });
  static List<CategoryModel> categories = [
    CategoryModel(
      id: 'business',
      title: 'Business',
      imagePath: AssetsManeger.busniess,
      bgColor: ColorsManegar.black,
    ),
    CategoryModel(
      id: 'entertainment',
      title: 'Entertainment',
      imagePath: AssetsManeger.entertainment,
      bgColor: ColorsManegar.black,
    ),
    CategoryModel(
      id: 'general',
      title: 'General',
      imagePath: AssetsManeger.general,
      bgColor: ColorsManegar.black,
    ),
    CategoryModel(
      id: 'health',
      title: 'Helth',
      imagePath: AssetsManeger.helth,
      bgColor: ColorsManegar.black,
    ),
    CategoryModel(
      id: 'science',
      title: 'Science',
      imagePath: AssetsManeger.science,
      bgColor: ColorsManegar.black,
    ),
    CategoryModel(
      id: 'sports',
      title: 'Sport',
      imagePath: AssetsManeger.sport,
      bgColor: ColorsManegar.black,
    ),
    CategoryModel(
      id: 'technology',
      title: 'Technology',
      imagePath: AssetsManeger.technology,
      bgColor: ColorsManegar.black,
    ),
  ];
}
