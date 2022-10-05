import 'package:flutter/material.dart';

class ThemeApp {

  static const TextStyle _primaryFont = TextStyle(
    color: Colors.white,
  );

  static const LinearGradient linearGradientPV1 = LinearGradient(
    colors: [
      Color.fromARGB(255, 255, 43, 60),
      Color.fromARGB(255, 218, 19, 118),
      Color.fromARGB(255, 145, 0, 120),
      Color.fromARGB(255, 94, 0, 78),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft
  );
  static const RadialGradient radialGradientPV2 = RadialGradient(
    colors: [
      Color.fromARGB(255, 255, 224, 250),
      Color.fromARGB(255, 255, 98, 171),
    ],
    radius: 0.7,
  );

  static const LinearGradient linearGradientPV3 = LinearGradient(
    colors: [
      Color.fromARGB(255, 224, 33, 49),
      Color.fromARGB(255, 255, 113, 70),
      Color.fromARGB(255, 245, 95, 49),
      Color.fromARGB(255, 224, 33, 49),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft
  );

  static const RadialGradient radialGradientPV4 = RadialGradient(
    colors: [
      Color(0xFFCD34ED),
      Color(0xFF5B1DD4),
    ],
    radius: 0.7,
  );

  static const LinearGradient linearGradientPV5 = LinearGradient(
    colors: [
      Color.fromARGB(255, 255, 39, 140),
      Color.fromARGB(255, 255, 136, 235),
      Color.fromARGB(255, 255, 39, 140),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft
  );

  static const Color letterColorPurple = Color(0xFF5B1DD4);

  static final ThemeData ligthTheme = ThemeData.light().copyWith(

    textTheme: const TextTheme(
      bodyText1: _primaryFont,
      bodyText2: _primaryFont,
      subtitle1: _primaryFont,
      subtitle2: _primaryFont,
      caption: _primaryFont,
      headline4: _primaryFont,
      headline5: _primaryFont,
      headline6: _primaryFont,
      button: _primaryFont,
    ),

    /* textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            backgroundColor: Colors.red,
            color: Colors.white
          ),
        ),
      )
    ), */

  );


}