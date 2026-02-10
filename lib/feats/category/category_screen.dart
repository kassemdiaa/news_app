import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/apis/api_service.dart';
import 'package:news_app/apis/models/article_modling/article.dart';
import 'package:news_app/apis/models/source_modling/source.dart';
import 'package:news_app/core/colors_manegar.dart';
import 'package:news_app/feats/category/article_widget.dart';
import 'package:news_app/feats/models/category_model.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder(
          future: ApiService.getSources(category),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              Center(child: Text(snapshot.error.toString()));
            }
            List<Sources> sources = snapshot.data?.sources ?? [];
            return DefaultTabController(
              length: sources.length,
              child: TabBar(
                isScrollable: true,
                indicatorColor: ColorsManegar.white,
                dividerColor: Colors.transparent,
                labelStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorsManegar.white,
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorsManegar.white,
                ),
                tabs: sources.map((source) => Tab(text: source.name)).toList(),
              ),
            );
          },
        ),
        FutureBuilder(
          future: ApiService.getarticles(category),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              Center(child: Text(snapshot.error.toString()));
            }
            List<Articles> articles = snapshot.data?.articles ?? [];
            return ListView.separated(
              itemBuilder: (context, index) =>
                  ArticleWidget(article: articles[index]),
              separatorBuilder: (context, index) => SizedBox(height: 10.h),
              itemCount: articles.length,
            );
          },
        ),
      ],
    );
  }
}
