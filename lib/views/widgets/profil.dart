import 'package:flutter/material.dart';

class Tentang extends StatelessWidget {
  const Tentang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: <Widget>[
                Image(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/Sampul_2.png"),
                ),
                Positioned(
                  bottom: -60.0,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/4x6-UNTAG.jpg"),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            ListTile(
              title: Center(
                  child: Text(
                "Aditya Pratama",
                style: TextStyle(fontSize: 20),
              )),
              subtitle: Center(child: Text("Teknik Informatika")),
            ),
            Center(
              child: Row(
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.facebook),
                    label: Text("Aditya Pratama"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.email),
                      label: Text("aditypraa@gmail.com"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Center(
                  child: Text(
                      "Life is so beautiful when you choose the right one",
                      style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: <Widget>[
                Image(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/sampul_shendy.jpg"),
                ),
                Positioned(
                  bottom: -60.0,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/shendy.png"),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            ListTile(
              title: Center(
                  child: Text(
                "Shendy Aulia Gifari Akni",
                style: TextStyle(fontSize: 20),
              )),
              subtitle: Center(child: Text("Teknik Informatika")),
            ),
            Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.email),
                      label: Text("ShendyAuliaGifariAkni@gmail.com"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Center(
                  child: Text(
                      "Don't stop when you are tired. Stop when you are done!",
                      style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
