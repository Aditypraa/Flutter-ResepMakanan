import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resep_makanan/views/home.dart';
import 'package:resep_makanan/views/splash_screen.dart';
import 'package:resep_makanan/views/widgets/landing.dart';
import 'package:resep_makanan/views/widgets/profil.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.pinkAccent,
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<CurvedNavigationBarState> _NavKey = GlobalKey();

  var PagesAll = [Landing(), HomePage(), Tentang()];

  var myindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant),
              SizedBox(width: 10),
              Text(
                "RESEP",
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ],
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff0096ff),
                  Color(0xff6610f2),
                  Color.fromARGB(255, 167, 150, 41)
                ],
              ),
            ),
          ),
        ),
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _NavKey,
          items: [
            Icon(Icons.brunch_dining_sharp, color: Colors.black),
            Icon(Icons.food_bank, color: Colors.black),
            Icon(Icons.supervised_user_circle_rounded, color: Colors.black)
          ],
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          animationCurve: Curves.fastLinearToSlowEaseIn,
          color: Color.fromARGB(255, 102, 16, 242),
        ),
        body: PagesAll[myindex]);
  }
}
