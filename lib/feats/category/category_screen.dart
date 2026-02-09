import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/colors_manegar.dart';
import 'package:news_app/feats/category/article_widget.dart';
import 'package:news_app/feats/models/article_model.dart';
import 'package:news_app/feats/models/category_model.dart';
import 'package:news_app/feats/models/source_model.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key, required this.category});
  final CategoryModel category;
  List<SourceModel> sources = [
    SourceModel(
      id: 'abc-news',
      name: 'ABC-NEWS',
      description: 'ABC-NEWSABC-NEWSABC-NEWSABC-NEWSABC-NEWS',
      country: 'us',
      url: 'https://abcnews.go.com',
      language: 'en',
      category: 'general',
    ),
    SourceModel(
      id: 'abc-news',
      name: 'ABC-NEWS',
      description: 'ABC-NEWSABC-NEWSABC-NEWSABC-NEWSABC-NEWS',
      country: 'us',
      url: 'https://abcnews.go.com',
      language: 'en',
      category: 'general',
    ),
    SourceModel(
      id: 'abc-news',
      name: 'ABC-NEWS',
      description: 'ABC-NEWSABC-NEWSABC-NEWSABC-NEWSABC-NEWS',
      country: 'us',
      url: 'https://abcnews.go.com',
      language: 'en',
      category: 'general',
    ),
    SourceModel(
      id: 'abc-news',
      name: 'ABC-NEWS',
      description: 'ABC-NEWSABC-NEWSABC-NEWSABC-NEWSABC-NEWS',
      country: 'us',
      url: 'https://abcnews.go.com',
      language: 'en',
      category: 'general',
    ),
    SourceModel(
      id: 'abc-news',
      name: 'ABC-NEWS',
      description: 'ABC-NEWSABC-NEWSABC-NEWSABC-NEWSABC-NEWS',
      country: 'us',
      url: 'https://abcnews.go.com',
      language: 'en',
      category: 'general',
    ),
    SourceModel(
      id: 'abc-news',
      name: 'ABC-NEWS',
      description: 'ABC-NEWSABC-NEWSABC-NEWSABC-NEWSABC-NEWS',
      country: 'us',
      url: 'https://abcnews.go.com',
      language: 'en',
      category: 'general',
    ),
    SourceModel(
      id: 'abc-news',
      name: 'ABC-NEWS',
      description: 'ABC-NEWSABC-NEWSABC-NEWSABC-NEWSABC-NEWS',
      country: 'us',
      url: 'https://abcnews.go.com',
      language: 'en',
      category: 'general',
    ),
    SourceModel(
      id: 'abc-news',
      name: 'ABC-NEWS',
      description: 'ABC-NEWSABC-NEWSABC-NEWSABC-NEWSABC-NEWS',
      country: 'us',
      url: 'https://abcnews.go.com',
      language: 'en',
      category: 'general',
    ),
    SourceModel(
      id: 'abc-news',
      name: 'ABC-NEWS',
      description: 'ABC-NEWSABC-NEWSABC-NEWSABC-NEWSABC-NEWS',
      country: 'us',
      url: 'https://abcnews.go.com',
      language: 'en',
      category: 'general',
    ),
    SourceModel(
      id: 'abc-news',
      name: 'ABC-NEWS',
      description: 'ABC-NEWSABC-NEWSABC-NEWSABC-NEWSABC-NEWS',
      country: 'us',
      url: 'https://abcnews.go.com',
      language: 'en',
      category: 'general',
    ),
    SourceModel(
      id: 'abc-news',
      name: 'ABC-NEWS',
      description: 'ABC-NEWSABC-NEWSABC-NEWSABC-NEWSABC-NEWS',
      country: 'us',
      url: 'https://abcnews.go.com',
      language: 'en',
      category: 'general',
    ),
    SourceModel(
      id: 'abc-news',
      name: 'ABC-NEWS',
      description: 'ABC-NEWSABC-NEWSABC-NEWSABC-NEWSABC-NEWS',
      country: 'us',
      url: 'https://abcnews.go.com',
      language: 'en',
      category: 'general',
    ),
    SourceModel(
      id: 'abc-news',
      name: 'ABC-NEWS',
      description: 'ABC-NEWSABC-NEWSABC-NEWSABC-NEWSABC-NEWS',
      country: 'us',
      url: 'https://abcnews.go.com',
      language: 'en',
      category: 'general',
    ),
  ];
  List<ArticleModel> articles = [
    ArticleModel(
      author: 'author',
      content: 'content',
      description:
          'descriptiondescriptiondescriptiondescriptiondescriptiondescription',
      publishedAt: 'publishedAt',
      title: 'title',
      url: 'url',
      urlToImage: 'assets/images/articleph.jpg',
    ),
    ArticleModel(
      author: 'author',
      content: 'content',
      description:
          'descriptiondescriptiondescriptiondescriptiondescriptiondescription',
      publishedAt: 'publishedAt',
      title: 'title',
      url: 'url',
      urlToImage: 'assets/images/articleph.jpg',
    ),
    ArticleModel(
      author: 'author',
      content: 'content',
      description:
          'descriptiondescriptiondescriptiondescriptiondescriptiondescription',
      publishedAt: 'publishedAt',
      title: 'title',
      url: 'url',
      urlToImage: 'assets/images/articleph.jpg',
    ),
    ArticleModel(
      author: 'author',
      content: 'content',
      description:
          'descriptiondescriptiondescriptiondescriptiondescriptiondescription',
      publishedAt: 'publishedAt',
      title: 'title',
      url: 'url',
      urlToImage: 'assets/images/articleph.jpg',
    ),
    ArticleModel(
      author: 'author',
      content: 'content',
      description:
          'descriptiondescriptiondescriptiondescriptiondescriptiondescription',
      publishedAt: 'publishedAt',
      title: 'title',
      url: 'url',
      urlToImage: 'assets/images/articleph.jpg',
    ),
    ArticleModel(
      author: 'author',
      content: 'content',
      description:
          'descriptiondescriptiondescriptiondescriptiondescriptiondescription',
      publishedAt: 'publishedAt',
      title: 'title',
      url: 'url',
      urlToImage: 'assets/images/articleph.jpg',
    ),
    ArticleModel(
      author: 'author',
      content: 'content',
      description:
          'descriptiondescriptiondescriptiondescriptiondescriptiondescription',
      publishedAt: 'publishedAt',
      title: 'title',
      url: 'url',
      urlToImage: 'assets/images/articleph.jpg',
    ),
    ArticleModel(
      author: 'author',
      content: 'content',
      description:
          'descriptiondescriptiondescriptiondescriptiondescriptiondescription',
      publishedAt: 'publishedAt',
      title: 'title',
      url: 'url',
      urlToImage: 'assets/images/articleph.jpg',
    ),
    ArticleModel(
      author: 'author',
      content: 'content',
      description:
          'descriptiondescriptiondescriptiondescriptiondescriptiondescription',
      publishedAt: 'publishedAt',
      title: 'title',
      url: 'url',
      urlToImage: 'assets/images/articleph.jpg',
    ),
    ArticleModel(
      author: 'author',
      content: 'content',
      description:
          'descriptiondescriptiondescriptiondescriptiondescriptiondescription',
      publishedAt: 'publishedAt',
      title: 'title',
      url: 'url',
      urlToImage: 'assets/images/articleph.jpg',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
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
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
            itemBuilder: (context, index) =>
                ArticleWidget(article: articles[index]),
            separatorBuilder: (context, index) => SizedBox(height: 12.h),
            itemCount: articles.length,
          ),
        ),
      ],
    );
  }
}
