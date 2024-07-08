import '/Helper/app_const.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConst.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome To Home',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppConst.textColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 50,),
              Image.asset('assets/images/welcome.png'),
              const SizedBox(height: 40,),
              Text(
                'Currently The Next Part of Home Activity & Fragementation is under development. The upcoming Part 2 is coming Soon........',
                style: TextStyle(
                  color: AppConst.textColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
