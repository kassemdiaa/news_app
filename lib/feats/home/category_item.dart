import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/colors_manegar.dart';

class CategoryItem extends StatelessWidget {
  final String imagePath;
  final String title;
  const CategoryItem({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManegar.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Image.asset(imagePath),
    );
  }
}
