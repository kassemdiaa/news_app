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
      id: 'id',
      title: 'Business',
      imagePath: AssetsManeger.busniess,
      bgColor: ColorsManegar.black,
    ),
    CategoryModel(
      id: 'id',
      title: 'Entertainment',
      imagePath: AssetsManeger.entertainment,
      bgColor: ColorsManegar.black,
    ),
    CategoryModel(
      id: 'id',
      title: 'General',
      imagePath: AssetsManeger.general,
      bgColor: ColorsManegar.black,
    ),
    CategoryModel(
      id: 'id',
      title: 'Helth',
      imagePath: AssetsManeger.helth,
      bgColor: ColorsManegar.black,
    ),
    CategoryModel(
      id: 'id',
      title: 'Science',
      imagePath: AssetsManeger.science,
      bgColor: ColorsManegar.black,
    ),
    CategoryModel(
      id: 'id',
      title: 'Sport',
      imagePath: AssetsManeger.sport,
      bgColor: ColorsManegar.black,
    ),
    CategoryModel(
      id: 'id',
      title: 'Technology',
      imagePath: AssetsManeger.technology,
      bgColor: ColorsManegar.black,
    ),
  ];
}
