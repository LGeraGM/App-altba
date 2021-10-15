import 'package:flutter/material.dart';

class DescripcionProducto extends StatelessWidget{
  String descripcionProducto = "";
  DescripcionProducto(this.descripcionProducto);
  @override
  Widget build(BuildContext context) {

    final descripProducto = Container(
      margin: EdgeInsets.only(top:5.0, right: 15.0,left: 15.0),
      child: Text(
        descripcionProducto,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
    final cajonDescripcion = Column(
      children: <Widget>[
        Container(      margin: EdgeInsets.only(top:10.0),
        child: Text("Descripción:",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold)
        )),
        descripProducto
      ],
    );
    // TODO: implement build
    return cajonDescripcion;
  }

}