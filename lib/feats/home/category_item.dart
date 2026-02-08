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
        borderRadius: BorderRadius.circular(32.r),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(32.r),
            child: Image.asset(imagePath),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Text(
                  title,
                  style: TextStyle(
                    color: ColorsManegar.white,
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
