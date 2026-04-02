import 'package:flutter/material.dart';
import 'package:learning_application/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final url =
      "https://whc.unesco.org/uploads/thumbs/site_0798_0006-1000-627-20120827171714.jpg";
  final sundarban =
      '''The Sundarbans mangrove forest, one of the largest such forests in the world (140,000 ha),lies on the delta of the Ganges, Brahmaputra and Meghna rivers on the Bay of Bengal. It is adjacent to the border of India’s Sundarbans World Heritage site inscribed in 1987. 
The site is intersected by a complex network of tidal waterways, mudflats and small islands of salt-tolerant mangrove forests, and presents an excellent example of ongoing ecological processes.
The area is known for its wide range of fauna, including 260 bird species, the Bengal tiger and other threatened species such as the estuarine crocodile and the Indian python.''';

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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The Sundarban",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          "Khulna Division, Bagladesh",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          child: VerticalDivider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                        ),
                        SizedBox(width: 8),

                        Column(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            Text(
                              "9.5",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
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
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.call, color: Colors.blue),
                        SizedBox(height: 5),
                        Text("CALL", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.alt_route, color: Colors.blue),
                        SizedBox(height: 5),
                        Text("ROUTE", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.share, color: Colors.blue),
                        SizedBox(height: 5),
                        Text("SHARE", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(
                  sundarban,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            "Sundarban",
            style: TextStyle(
              color: Colors.green,
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
