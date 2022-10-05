import 'package:finandina_test/themes/theme_app.dart';
import 'package:flutter/material.dart';

class PageView2 extends StatelessWidget {
  const PageView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
        decoration: const BoxDecoration(
          gradient: ThemeApp.radialGradientPV2,
        ),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                'assets/comun/icon_app.png',
                scale: 1/(size.width * 0.003),
              ),
              const Spacer(),

              Stack(
                children: [
                  Image.asset(
                    'assets/pageview2/slide_pv2.png',
                    scale: 1/(size.width * 0.005),
                  ),
                  Image.asset(
                    'assets/pageview2/phone_pv2.png',
                    scale: 1/(size.width * 0.005),
                  ),
                ],
              ),
              const Spacer(),

              Text(
                'Tus productos a la mano', 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.08,
                ),
              ),
              const SizedBox(height: 10),

              Text(
                'Administralos libremente desde cualquier lugar, fácil y rápido.', 
                style: TextStyle(
                  fontSize: size.width * 0.04,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(flex: 3),

            ],
          ),
        ),
      ),
    );
  }
}