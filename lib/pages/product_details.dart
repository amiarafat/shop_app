import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 10.0,
        backgroundColor: Colors.red,
        title: Text(
          'Shop App',
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: new ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Image.asset(
                widget.product_detail_picture,
                fit: BoxFit.contain,
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_detail_name, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                         child: new Text("\$ ${widget.product_detail_old_price}",
                           style: TextStyle(color: Colors.black, decoration: TextDecoration.lineThrough),
                         )
                      ),
                      Expanded(
                          child: new Text("\$ ${widget.product_detail_new_price}", style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w800
                          ),)
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          // this first buttons ==========

          Row(
            children: <Widget>[


              //the size button ==========
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder:(context){
                      return new AlertDialog(
                        title: new Text("Size"),
                        content: new Text("Choose the size"),
                        actions: <Widget>[
                            new MaterialButton(onPressed: (){
                               Navigator.of(context).pop(context);
                            },
                            child: new Text("Close"),
                          ),
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size"),
                      ),

                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),


                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder:(context){
                          return new AlertDialog(
                            title: new Text("Color"),
                            content: new Text("Choose the color"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("Close"),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Color"),
                      ),

                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),


                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder:(context){
                          return new AlertDialog(
                            title: new Text("Qty"),
                            content: new Text("Choose the Quantity"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("Close"),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),
                      ),

                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),


                    ],
                  ),
                ),
              )
            ],
          ),


          // this first buttons ==========

          Row(
            children: <Widget>[


              //the size button ==========
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy Now"),
                ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart),color:Colors.red, onPressed: (){}),

              new IconButton(icon: Icon(Icons.favorite_border),color:Colors.red, onPressed: (){}),
            ],
          ),

          new Divider(),
          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text("A product description is the marketing copy used to describe a product’s value proposition to potential customers. A compelling product description provides customers with details around features, problems it solves and other benefits to help generate a sale."),
          ),
          new Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Name", style: TextStyle(color: Colors.grey),),
              ),
                Padding(padding: const EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              ),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand", style: TextStyle(color: Colors.grey,),),
              ),
              Padding(padding: const EdgeInsets.all(5.0),
                child: new Text(" Brand X"),
              ),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Condition", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: const EdgeInsets.all(5.0),
                child: new Text("New"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
