import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/assets_maneger.dart';
import 'package:news_app/feats/home/category_item.dart';
import 'package:news_app/feats/models/category_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.onCategoryItemClicked});
  final void Function(CategoryModel) onCategoryItemClicked;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Image.asset(AssetsManeger.goodMorning),
        ),
        SizedBox(height: 20.h),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                onCategoryItemClicked(CategoryModel.categories[index]);
              },
              child: CategoryItem(
                imagePath: CategoryModel.categories[index].imagePath,
                title: CategoryModel.categories[index].title,
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(height: 10.h),
            itemCount: CategoryModel.categories.length,
          ),
        ),
      ],
    );
  }
}
