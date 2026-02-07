import 'package:flutter/material.dart';
import 'package:news_app/core/routes_maneger.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesManeger.getRoute,
      initialRoute: RoutesManeger.mainlayout,

    );
  }
}