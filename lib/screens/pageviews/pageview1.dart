import 'package:finandina_test/themes/theme_app.dart';
import 'package:flutter/material.dart';

class PageView1 extends StatelessWidget {
  PageView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final styleUp = TextStyle(fontSize: size.width * 0.07);

    return Container(
        width: size.width,
        decoration: const BoxDecoration(
          gradient: ThemeApp.linearGradientPV1,
        ),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                'assets/comun/icon_app.png',
                scale: 1/(size.width * 0.005),
              ),
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Con ', style: styleUp),
                  Text(
                    'Banco Findamina ',
                    style: styleUp.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text('tienes el poder de ser libre', style: styleUp),

              const Spacer(flex: 3),

              Text(
                'Descubre lo que puedes hacer con tu',
                style: TextStyle(fontSize: size.width * 0.045),
              ),
              Text(
                'App Banco Finandina', 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.08,
                ),
              ),
              const Spacer(flex: 1),
              SizedBox(height: size.width * 0.03),
            ],
          ),
        ),
    );
  }
}