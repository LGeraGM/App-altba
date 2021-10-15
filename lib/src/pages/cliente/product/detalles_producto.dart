import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetallesProducto extends StatelessWidget{

  String nombreProducto = "Modular Europeo";
  String altoProducto = "190.0 cm";
  String anchoProducto = "240.0 cm";
  String fondoProducto = "55.0 cm";
  DetallesProducto(this.nombreProducto,this.altoProducto,this.anchoProducto,this.fondoProducto);

  @override
  Widget build(BuildContext context) {

    final modeloProducto = Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      alignment: Alignment.centerLeft,
      child: Text(
        nombreProducto,
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    final detallesProducto = Container(
      margin: EdgeInsets.only(left: 15.0),
      alignment: Alignment.centerLeft,
      child: Text(
        "Detalles",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    final alto = Container(
      margin: EdgeInsets.only(left: 15.0),
      alignment: Alignment.centerLeft,
      child: Text(
        "Alto: $altoProducto",
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
    );
    final ancho = Container(
      margin: EdgeInsets.only(left: 15.0),
      alignment: Alignment.centerLeft,
      child: Text(
        "Ancho: $anchoProducto",
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
    );
    final fondo = Container(
      margin: EdgeInsets.only(left: 15.0),
      alignment: Alignment.centerLeft,
      child: Text(
        "Fondo: $fondoProducto",
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
    );
    final cajonDescripcionProducto = Column(
      children: <Widget>[modeloProducto, detallesProducto, alto, ancho, fondo],
    );
    final descripcionProducto = Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.15,
        ),
        cajonDescripcionProducto
      ],
    );
    // TODO: implement build
    return descripcionProducto;
  }
}
