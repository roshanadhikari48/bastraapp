import 'package:ecommerceapp/components/horizontal_listview.dart';
import 'package:ecommerceapp/components/products.dart';
import 'package:ecommerceapp/pages/cart.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousal = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/w3.jpeg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/w1.jpeg'),
        ],
        autoplay: false,
        dotSize: 4.0,
        dotColor: Colors.transparent,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.red[400],
        title: Text('Bastra'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
          )
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//header
            new UserAccountsDrawerHeader(
              accountName: Text("Roshan Adhikari"),
              accountEmail: Text("adhikariroshan157@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red[500]),
            ),
            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: ListTile(
                title: Text("Shopping Cart"),
                leading: Icon(Icons.shopping_cart, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                ),
              ),
            )
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          imageCarousal,
          //horizontallist view
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: new Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          HorizontalList(),
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: new Text(
                "Recent Products",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //Grid View
          Flexible(
            child: Products(),
          ),
        ],
      ),
    );
  }
}
