import 'package:finandina_test/screens/pageviews/pageviews.dart';
import 'package:finandina_test/themes/theme_app.dart';
import 'package:finandina_test/widgets/custom_paginator.dart';
import 'package:flutter/material.dart';

class PageViewHome extends StatefulWidget {
  PageViewHome({Key? key}) : super(key: key);

  @override
  State<PageViewHome> createState() => _PageViewHomeState();
}

class _PageViewHomeState extends State<PageViewHome> {
  final PageController pageController = PageController(initialPage: 4);

  final List<Widget> pageviews = [
    PageView1(),
    PageView2(),
    PageView3(),
    PageView4(),
    PageView5(),
    PageView6(),
  ];

  int pageViewIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            
            pageviews[pageViewIndex],

            if(pageViewIndex < pageviews.length-1)
            Positioned(
              bottom: size.height * 0.05,
              left: size.width * 0.025,
              child: CustomPaginator(
                totalSteps: pageviews.length, 
                activateIndex: pageViewIndex, 
                onSkip: () => Navigator.of(context).pushNamed('home'),
                onPressedNext: (){
                  pageViewIndex++;
                  if (pageViewIndex >= pageviews.length) pageViewIndex = pageviews.length - 1;
                  setState(() {});
                },
                onDotClicked: (index) {
                  pageViewIndex = index;
                  setState(() {});
                },
              ),
            ),

            if(pageViewIndex == pageviews.length-1)
            Positioned(
              bottom: size.height * 0.05,
              left: size.width * 0.05,
              child: MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.3, vertical: 15),
                child: Text(
                  'Libera tu banca',
                  style: TextStyle(
                    color: ThemeApp.letterColorPurple,
                    fontSize: size.width * 0.045
                  ),
                ),
                onPressed: () => Navigator.of(context).pushNamed('home'),
              ),
            ),


          ],
        ),
      ),
    );
  }
}