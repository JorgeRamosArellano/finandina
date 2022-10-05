import 'package:finandina_test/themes/theme_app.dart';
import 'package:flutter/material.dart';

class PageView5 extends StatelessWidget {
  const PageView5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
        decoration: const BoxDecoration(
          gradient: ThemeApp.linearGradientPV5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              'assets/comun/icon_app.png',
              scale: 1 / (size.width * 0.003),
            ),
            const Spacer(),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                SizedBox(
                  //padding: EdgeInsets.symmetric(vertical: size.height * 0.04),
                  width: size.width,
                  child: Image.asset(
                    'assets/pageview5/slide1_pv5.png',
                    scale: 1 / (size.width * 0.003),
                  ),
                ),
                Image.asset(
                  'assets/pageview5/slide2_pv5.png',
                  scale: 1 / (size.width * 0.003),
                ),
                Positioned(
                  right: size.width * 0.14,
                  bottom: size.width * 0.17,
                  child: Image.asset(
                    'assets/pageview5/taza_pv5.png',
                    scale: 1 / (size.width * 0.0027),
                  ),
                ),
                Positioned(
                  left: size.width * 0.20,
                  bottom: size.width * 0.17,
                  child: Image.asset(
                    'assets/pageview5/phone_pv5.png',
                    scale: 1 / (size.width * 0.00255),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              'Tu banco donde quieras',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.08,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'La oficina más cercana es tu celular. Libérate de las filas y los trámites largos.',
              style: TextStyle(
                fontSize: size.width * 0.04,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}