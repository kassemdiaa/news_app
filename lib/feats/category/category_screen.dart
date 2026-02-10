import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:news_app/apis/models/article_modling/article.dart';
import 'package:news_app/apis/models/source_modling/source.dart';
import 'package:news_app/core/colors_manegar.dart';
import 'package:news_app/feats/category/article_widget.dart';
import 'package:news_app/feats/models/category_model.dart';
import 'package:news_app/providers/sources_provider.dart';
import 'package:news_app/providers/articles_provider.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SourcesProvider()..fetchSources(category),
      child: ChangeNotifierProvider(
        create: (_) => ArticlesProvider(),
        child: Consumer<SourcesProvider>(
          builder: (context, sourcesProvider, _) {
            if (sourcesProvider.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            if (sourcesProvider.error != null) {
              return Center(child: Text(sourcesProvider.error!));
            }
            List<Source> sources = sourcesProvider.sources;
            if (sources.isEmpty) {
              return Center(child: Text("No sources available"));
            }

            // Initialize articles with first source
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.read<ArticlesProvider>().fetchArticles(sources[0]);
            });

            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                DefaultTabController(
                  length: sources.length,
                  child: TabBar(
                    onTap: (index) {
                      // Fetch articles when tab is changed
                      context.read<ArticlesProvider>().fetchArticles(sources[index]);
                    },
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
                Consumer<ArticlesProvider>(
                  builder: (context, articlesProvider, _) {
                    if (articlesProvider.isLoading) {
                      return Expanded(child: Center(child: CircularProgressIndicator()));
                    }
                    if (articlesProvider.error != null) {
                      return Expanded(child: Center(child: Text(articlesProvider.error!)));
                    }
                    List<Articles> articles = articlesProvider.articles;
                    if (articles.isEmpty) {
                      return Expanded(child: Center(child: Text("No articles found")));
                    }
                    return Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) =>
                            ArticleWidget(article: articles[index]),
                        separatorBuilder: (context, index) => SizedBox(height: 10.h),
                        itemCount: articles.length,
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
