import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/apis/models/article_modling/article.dart';
import 'package:news_app/core/colors_manegar.dart';


class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key, required this.article});
  final Articles article;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: ColorsManegar.white, width: 1.5.w),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20.r),
            child: Image.asset(article.urlToImage ?? 'assets/placeholder.png'),
          ),
          SizedBox(height: 10.h),
          Text(
            article.description ?? 'No description available',
            style: TextStyle(
              color: ColorsManegar.white,
              fontWeight: FontWeight.w500,
              fontSize: 18.sp,
            ),
          ),
          SizedBox(height: 14.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                article.author ?? 'Unknown Author',
                style: TextStyle(
                  color: ColorsManegar.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
              ),
              Text(
                article.publishedAt ?? 'Unknown Date',
                style: TextStyle(
                  color: ColorsManegar.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
