import 'package:flutter/material.dart';
import 'package:learning_application/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final url="https://img.freepik.com/free-photo/lavender-field-sunset-near-valensole_268835-3910.jpg?semt=ais_incoming&w=740&q=80";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: Scaffold(
        drawer: Drawer(child: SafeArea(child: Text("Hello")),),
        // body: Center(child: Image.network(url, fit: BoxFit.cover,)), // single child
        body: Center(child: Column(children: [Image.network(url, fit: BoxFit.cover,), Icon(Icons.headphones), Text("Headphone")],)),
        appBar: AppBar(title: Text("Simple App", style: TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold)), centerTitle: true),
      )
    );
  }
}
