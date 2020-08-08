import 'package:ecommerceapp/screens/homepage.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;

  final product_detail_old_price;
  final product_detail_picture;
  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.red[400],
        title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new HomePage()));
            },
            child: Text('Basstra ')),
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
      body: ListView(
        children: <Widget>[
          new Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child:
                            new Text("\Rs ${widget.product_detail_old_price}",
                                style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                )),
                      ),
                      Expanded(
                        child: new Text(
                          "\Rs ${widget.product_detail_new_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          //the first buttons
          Row(
            children: <Widget>[
              //the size button
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: new Text("Size"),
                        content: new Text("Choose the Size"),
                        actions: <Widget>[
                          new MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: new Text("Close"),
                            color: Colors.red,
                          )
                        ],
                      );
                    },
                  );
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Size")),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: new Text("Color"),
                        content: new Text("Choose the Color"),
                        actions: <Widget>[
                          new MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: new Text("Close"),
                            color: Colors.red,
                          )
                        ],
                      );
                    },
                  );
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Color")),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: new Text("Quantity"),
                        content: new Text("Choose the Quantity"),
                        actions: <Widget>[
                          new MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: new Text("Close"),
                            color: Colors.red,
                          )
                        ],
                      );
                    },
                  );
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Qty")),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
            ],
          ),
          //the second buy now button
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: new Text("Buy Now"),
                ),
              ),
              new IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  color: Colors.red,
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(Icons.favorite),
                  color: Colors.red,
                  onPressed: () {})
            ],
          ),

          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text(
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(
            color: Colors.red,
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  " Product Name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  " Product Brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              //rEMEMBER TO CREATE PRODUCT BRAND
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("Brand X"),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  " Product Condition",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("New"),
              )
            ],
          ),
          //similar product section
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              "Similar Products",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 360,
            child: SimilarProducts(),
          )
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  SimilarProducts({Key key}) : super(key: key);

  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 90,
    },
    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 1000,
      "price": 900,
    },
    {
      "name": "Skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 1200,
      "price": 950,
    },
    {
      "name": "Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 1200,
      "price": 950,
    },
    {
      "name": "Shoes",
      "picture": "images/products/shoe1.jpg",
      "old_price": 1200,
      "price": 950,
    },
    {
      "name": "Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 1200,
      "price": 950,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Similar_single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  Similar_single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("Hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => ProductDetails(
                        product_detail_name: prod_name,
                        product_detail_old_price: prod_old_price,
                        product_detail_picture: prod_picture,
                        product_detail_new_price: prod_price,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            prod_name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        new Text(
                          '\Rs ${prod_price}',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
