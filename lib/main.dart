import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final url =
      "https://cdn.pixabay.com/photo/2020/02/15/16/09/loveourplanet-4851331_1280.jpg";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        drawer: Drawer(
          clipBehavior: Clip.antiAlias,
          child: SafeArea(child: Text("Hello data")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.network(url, height: 300, width: 300),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(9),
                      gradient: LinearGradient(
                        colors: [Colors.green, Colors.lightGreenAccent],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Icon(Icons.favorite_border, size: 49, color: Colors.white,),
                  ),
                  Positioned(
                    top: -5,
                    right: -5,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "10",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight(600),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Text(
                "Hello flutter",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(Icons.home_filled, size: 50, color: Colors.green),
                  Text(
                    "Welcome Flutter",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                      fontWeight: FontWeight(500),
                    ),
                  ),
                ],
              ),
              Image.asset("assets/images/istockphoto-696063626-612x612.jpg", width: 300, height: 300,),
            ],
          ),
        ),
        appBar: AppBar(
          leading: Icon(Icons.heart_broken),
          shadowColor: Colors.indigo,
          title: Text(
            "Simple App",
            style: TextStyle(
              color: Colors.red,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ),
          centerTitle: false,
        ),
      ),
      // const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
