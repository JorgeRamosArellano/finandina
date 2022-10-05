import 'package:finandina_test/themes/theme_app.dart';
import 'package:flutter/material.dart';

class PageView4 extends StatelessWidget {
  const PageView4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        //padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
        decoration: const BoxDecoration(
          gradient: ThemeApp.radialGradientPV4,
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
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.04),
                  width: size.width,
                  child: Image.asset(
                    'assets/pageview4/slide1_pv4.png',
                    scale: 1 / (size.width * 0.003),
                  ),
                ),
                Positioned(
                  left: size.width * 0.25,
                  top: size.width * 0.08,
                  child: Image.asset(
                    'assets/pageview4/slide2_pv4.png',
                    scale: 1 / (size.width * 0.003),
                  ),
                ),
                Positioned(
                  top: size.width * 0.05,//20,
                  left: - size.width * 0.14,//-50,
                  child: Image.asset(
                    'assets/pageview4/hand1_pv4.png',
                    scale: 1 / (size.width * 0.0023),
                  ),
                ),
                Positioned(
                  right: - size.width * 0.3,
                  top:  size.width * 0.3,
                  child: Image.asset(
                    'assets/pageview4/hand2_pv4.png',
                    scale: 1 / (size.width * 0.0023),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              'Envía dinero',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.08,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Pasa plata libremente y sin costo a cualquier cuenta bancaria o celular en Colombia.',
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
