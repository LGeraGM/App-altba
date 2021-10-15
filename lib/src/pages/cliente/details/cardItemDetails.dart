import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cardItemDetails extends StatelessWidget{
  String producto = "producto";
  String precioProducto = "0000";
  String cantProducto = "000";
  int precio, cant, sub;

  String urlProducto = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtmn5upgGeBTKUvb2HsuMIIOVYe6G-xKTYj_IBUqGtq4UkXoixgw&s";
  var fondoEstado;

  cardItemDetails(this.producto, this.precioProducto, this.cantProducto, this.urlProducto);
  @override
  Widget build(BuildContext context) {
    precio = int.parse('$precioProducto');
    cant = int.parse('$cantProducto');
    final fondoItem = Container(
      height: 140,
      width: MediaQuery.of(context).size.width * .95,
      margin: EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        shape: BoxShape.rectangle
      )
    );

    final fotoProducto = Container(
      width: 120.0,
      height: 120.0,
      margin: EdgeInsets.only(left: 15.0, top: 15.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(urlProducto)),
      ),
    );

    final cantidadProducto = Container(
        margin: EdgeInsets.only(left: 150.0, top: 65.0),
        child: Text(
          "Cantidad: $cantProducto",
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black54
          ),
        ));

    final productoPedido = Container(
        margin: EdgeInsets.only(left: 150.0, top: 20.0),
        child: Text(
          "Producto: $producto",
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black54
          ),
        ));

    final precioPro = Container(
      margin: EdgeInsets.only(left: 150, top: 90),
      child: Text(
        "Precio: \$$precioProducto",
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.black54
        ),
      ));

    sub = precio*cant;
    final subtotal = Container(
      margin: EdgeInsets.only(left: 150, top: 115),
        child: Text(
        "Subtotal: \$$sub",
         style: TextStyle(
           fontSize: 18.0,
           color: Color.fromRGBO(227, 143, 36, 100),
         ),
      ));

    return Stack(
      children: <Widget>[
        fondoItem,
        fotoProducto,
        productoPedido,
        cantidadProducto,
        precioPro,
        subtotal
      ]
    );
  }
}