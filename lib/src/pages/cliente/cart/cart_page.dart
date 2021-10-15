import 'package:flutter/material.dart';

import 'package:altba/src/widgets/menu_widget.dart';

import 'cartList.dart';

class CartPage extends StatelessWidget {

  static final String routeName = 'carrito';

  @override
  Widget build(BuildContext context) {
    String precioTotal = "15,000";
    final botonAnadirCarro = ButtonTheme(
      height: 50,
      alignedDropdown: true,
      child: RaisedButton(
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(5.0),
        ),
        color: Colors.orange,
        child: Text("Hacer pedido"),
        onPressed: () {},
      ),
    );
    final tituloCarrito = Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Text(
          "¡YA CASI ESTÁ LISTO TU PEDIDO!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
        ));
    final muestraPrecioProducto = Text(
      precioTotal,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.orange, fontSize: 20.0),
    );
    final contenedorPrecioProducto = Column(
      children: <Widget>[
        Container(child: Text("PRECIO")),
        Container(child: muestraPrecioProducto)
      ],
    );
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Altba Inicio'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: ()=> Navigator.pushReplacementNamed( context, CartPage.routeName ),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              shrinkWrap: false,
              primary: false,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.symmetric(vertical:5.0),child:
                tituloCarrito),
                Container(
                  height: MediaQuery.of(context).size.height - 215,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      Column(
                        children: <Widget>[
                          Wrap(
                            children: <Widget>[
                              CartList(),
                              Container(height: 50, color: Colors.blue),
                              Container(height: 50, color: Colors.black),
                              Container(height: 50, color: Colors.white),
                              Container(height: 50, color: Colors.deepOrange),
                              Container(height: 50, color: Colors.deepPurple),
                              Container(height: 50, color: Colors.red),
                              Container(height: 50, color: Colors.blue),
                              Container(height: 50, color: Colors.deepOrange),
                              Container(height: 50, color: Colors.blue),
                              Container(height: 50, color: Colors.black),
                              Container(height: 50, color: Colors.white),
                              Container(height: 50, color: Colors.deepOrange),
                              Container(height: 50, color: Colors.deepPurple),
                              Container(height: 50, color: Colors.red),
                              Container(height: 50, color: Colors.blue)
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      contenedorPrecioProducto,
                      botonAnadirCarro
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      drawer: MenuWidget(),
    );
  }
}
