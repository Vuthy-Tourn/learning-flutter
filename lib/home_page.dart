import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  // const MyHomePage({super.key, required this.title});
  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final url =
      "https://cdn.pixabay.com/photo/2020/02/15/16/09/loveourplanet-4851331_1280.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildDrawer(),
      body: _buildCenter(),
      appBar: AppBar(
        // leading: Icon(Icons.heart_broken),
        shadowColor: Colors.indigo,
        title: Text(
          "Simple App",
          style: TextStyle(
            color: Colors.red,
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
          SizedBox(width: 10,)
        ],
        centerTitle: false,
      ),
    );
  }

  Drawer _buildDrawer() {
    return Drawer(
        // backgroundColor: Colors.blueGrey,
        child: SafeArea(
            child: Column(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white,width: 2),
                            borderRadius: BorderRadius.circular(80),
                            image: DecorationImage(image: AssetImage("assets/images/istockphoto-696063626-612x612.jpg",),fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("Vuthy Tourn",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                            Text("View profile")],)
                      ],),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () {},

                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("setting"),
                    onTap: () {},

                  ),
                  ListTile(
                    leading: Icon(Icons.wallet),
                    title: Text("My Wallet"),
                    onTap: () {},

                  ),
                ])
        )
    );
  }
  Widget _buildCenter() {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.network(url, height: 300, width: 300),
          _buildStack(),
          Spacer(),
          Text(
            "Hello flutter",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          _buildRow(),
          Image.asset("assets/images/istockphoto-696063626-612x612.jpg", width: 300, height: 300,),
        ],
      ),
    );
  }

  Widget _buildRow() {
    return Row(
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
    );
  }

  Widget _buildStack() {
    return Stack(
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
    );
  }
}