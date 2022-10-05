import 'package:finandina_test/screens/home_screen.dart';
import 'package:finandina_test/screens/pageviews/pageview_home.dart';
import 'package:finandina_test/screens/pageviews/pageviews.dart';
import 'package:flutter/material.dart';


class Routes {

  static String initialRoute = 'pageviewhome';
  static final Map<String, Widget Function(BuildContext)> routes = {
    'home' : (_) => HomeScreen(),
    'pageviewhome' : (_) => PageViewHome(),
    'pageview1' : (_) => PageView1(),
  };


}