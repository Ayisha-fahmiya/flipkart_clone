import 'dart:async';

import 'package:flipkart_clone/constants/colors.dart';
import 'package:flipkart_clone/screens/homPage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 1),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KDefaultColor,
      body: Center(
        child: SizedBox(
          height: 72,
          width: 72,
          child: Image.asset('assets/images/flipkartIcon.png'),
        ),
      ),
    );
  }
}
