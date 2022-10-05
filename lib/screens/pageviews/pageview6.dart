import 'package:finandina_test/themes/theme_app.dart';
import 'package:flutter/material.dart';

class PageView6 extends StatelessWidget {
  const PageView6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
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
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.04),
                  width: size.width,
                  child: Image.asset(
                    'assets/pageview6/slide1_pv6.png',
                    scale: 1 / (size.width * 0.003),
                  ),
                ),
                Positioned(
                  right: - size.width * 0.28,
                  child: Image.asset(
                    'assets/pageview6/hand1_pv6.png',
                    scale: 1 / (size.width * 0.0026),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              '¡Escanea y listo!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.08,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Paga en datáfonos con QR y libérate de las tarjetas físicas.',
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