
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fyp/view/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

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

    Timer(const Duration(seconds: 3), () {
      // Replace with your navigation code
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('images/splash_pic.jpg',
                  fit: BoxFit.cover, height: height * .5),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                'TOP HEADLINES',
                style: GoogleFonts.anton(
                    letterSpacing: .6, color: Colors.blueGrey.shade700,fontSize: 30),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              const SpinKitChasingDots(
                size: 40,
                color: Colors.lime,
              )
            ],
          ),
        ),
      ),
    );
  }
}
