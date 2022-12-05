import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:resep_makanan/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => MyHomePage(
                      title: "",
                    ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff0096ff),
              Color(0xff6610f2),
              Color.fromARGB(255, 167, 150, 41),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "Aplikasi Resep Makanan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Image.asset(
                  "assets/images/Logo_Untag.png",
                  height: 200.0,
                  width: 200.0,
                ),
                Image.asset(
                  "assets/icon/Logo_Aplikasi_Kue.png",
                  height: 250.0,
                  width: 250.0,
                ),
                Text("Aditya Pratama - 1462000179"),
                Text("Shendy Aulia Gifari Akni - 1462000279"),
              ],
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
