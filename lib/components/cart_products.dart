import 'package:flutter/material.dart';

class CartProduct extends StatefulWidget {
  CartProduct({Key key}) : super(key: key);

  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  var products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 9000,
      "size": "M",
      "color": "Red",
      "Quantity": 1,
    },
    {
      "name": " Red dress",
      "picture": "images/products/dress1.jpeg",
      "price": 900,
      "size": "M",
      "color": "Red",
      "Quantity": 1,
    },
    {
      "name": "Shoes",
      "picture": "images/products/shoe1.jpg",
      "price": 950,
      "size": "M",
      "color": "Red",
      "Quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: products_on_the_cart[index]["name"],
            cart_prod_size: products_on_the_cart[index]["size"],
            cart_prod_quantity: products_on_the_cart[index]["Quantity"],
            cart_prod_price: products_on_the_cart[index]["price"],
            cart_prod_picture: products_on_the_cart[index]["picture"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_quantity;
  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_color,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_quantity,
      this.cart_prod_size});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //=========== leading section=========
        leading: new Image.asset(
          cart_prod_picture,
          width: 80.0,
          height: 80.0,
        ),
        //=====title section=========
        title: Text(cart_prod_name),
        //=============subtitle section=========

        subtitle: new Column(
          children: <Widget>[
            //row inside column
            new Row(
              children: <Widget>[
                // this section sfor size of products
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: new Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                //this section for color of products
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: new Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            // this section is for product price
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\Rs${cart_prod_price}",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),

        trailing: new Column(
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
            new Text("$cart_prod_quantity"),
            IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {})
          ],
        ),
      ),
    );
  }
}
