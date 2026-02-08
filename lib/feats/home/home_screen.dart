import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/feats/home/category_item.dart';
import 'package:news_app/feats/models/category_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      itemBuilder: (context, index) => CategoryItem(
        imagePath: CategoryModel.categories[index].imagePath,
        title: CategoryModel.categories[index].title,
      ),
      separatorBuilder: (context, index) => SizedBox(height: 10.h),
      itemCount: CategoryModel.categories.length,
    );
  }
}
