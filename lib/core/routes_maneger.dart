import 'package:flutter/cupertino.dart';
import 'package:news_app/feats/mainlayout.dart';

abstract class RoutesManeger {
  static const String mainlayout = '/mainlayout';
  static Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainlayout:
        return CupertinoPageRoute(builder: (context) => Mainlayout());
    }
    return null;
  }
}
