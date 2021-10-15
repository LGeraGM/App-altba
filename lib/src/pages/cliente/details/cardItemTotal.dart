import 'dart:ui';
import 'package:flutter/material.dart';

class cardItemTotal extends StatelessWidget{
  String cantidad = "0";
  String total = "00000";

  cardItemTotal(this.cantidad, this.total);
  @override
  Widget build(BuildContext context) {
    final fondoItem = Container(
      height: 75,
      width: MediaQuery.of(context).size.width * .95,
      margin: EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        shape: BoxShape.rectangle,
      ),
    );

    final cantidadPro = Container(
        margin: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          "Productos Ordenados: $cantidad",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.black45,
          ),
        ));

    final total = Container(
        margin: EdgeInsets.only(left: 15, top: 45),
        child: Text(
          "Total: \$15,000",
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 24.0,
            color: Color.fromRGBO(30, 215, 96, 100),
          ),
        ));
    return Stack(
      children: <Widget>[
       fondoItem,
       cantidadPro,
       total
      ]
    );
  }

}