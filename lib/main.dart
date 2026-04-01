import 'package:flutter/material.dart';
import 'package:learning_application/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final url =
      "https://img.freepik.com/free-photo/lavender-field-sunset-near-valensole_268835-3910.jpg?semt=ais_incoming&w=740&q=80";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: Scaffold(
        drawer: Drawer(child: SafeArea(child: Text("Hello"))),
        // body: Center(child: Image.network(url, fit: BoxFit.cover,)), // single child
        body: Center(
          child: Column(
            children: [
              Image.network(url, fit: BoxFit.cover),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Landscape", style: TextStyle(color: Colors.deepPurpleAccent, fontWeight: FontWeight.w500, fontSize: 15),),
                    Row(
                      children: [
                        ...List.generate(
                          5,
                          (index) =>
                              Icon(Icons.star, color: Colors.amber, size: 20),
                        ),
                        SizedBox(width: 8),
                        Text("4.5"),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.grey[400],
                    child: Column(
                      children: [
                        Icon(Icons.headphones, color: Colors.blue),
                        Text("Headphone", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.grey[400],
                    child: Column(
                      children: [
                        Icon(Icons.headphones, color: Colors.blue),
                        Text("Headphone", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.grey[400],
                    child: Column(
                      children: [
                        Icon(Icons.headphones, color: Colors.blue),
                        Text("Headphone", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  "A landscape comprises the visible features of land—including mountains, water, and vegetation—integrating natural and human-made elements for aesthetic or functional purposes. It represents both natural scenery and designed outdoor spaces, such as gardens, parks, or urban environments, often managed for ecology and usability. ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            "Simple App",
            style: TextStyle(
              color: Colors.red,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
