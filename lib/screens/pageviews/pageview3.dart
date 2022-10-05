import 'package:finandina_test/themes/theme_app.dart';
import 'package:flutter/material.dart';

class PageView3 extends StatelessWidget {
  const PageView3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
        decoration: const BoxDecoration(
          gradient: ThemeApp.linearGradientPV3,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                'assets/comun/icon_app.png',
                scale: 1/(size.width * 0.003),
              ),
              const Spacer(),

              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/pageview3/slide1_pv3.png',
                          scale: 1/(size.width * 0.0032),
                        ),
                        Image.asset(
                          'assets/pageview3/slide2_pv3.png',
                          scale: 1/(size.width * 0.003),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: size.width * 0.07,
                    left: size.width * 0.035,
                    child: Image.asset(
                      'assets/pageview3/phone_pv3.png',
                      scale: 1/(size.width * 0.003),
                    ),
                  ),
                ],
              ),
              const Spacer(),

              Text(
                'Paga libremente', 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.08,
                ),
              ),
              const SizedBox(height: 10),

              Text(
                'Puedes pagar tus productos, recibos y facturas en cualquier momento y lugar.', 
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