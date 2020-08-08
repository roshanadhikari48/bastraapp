import 'package:ecommerceapp/components/cart_products.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.red[400],
        title: Text('Cart'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: new CartProduct(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total Amount:"),
                subtitle: new Text("\Rs 230"),
              ),
            ),
            Expanded(
              child: MaterialButton(
                color: Colors.red,
                onPressed: () {},
                child: new Text(
                  "Check Out",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
