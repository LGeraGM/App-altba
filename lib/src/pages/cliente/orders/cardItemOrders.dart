import 'dart:ui';

import 'package:flutter/material.dart';

class cardItemOrders extends StatelessWidget{
  String fecha = "Enero 01, 2010";
  String folio = "AA - 0000000000";
  String producto = "producto";
  String total = "0000";
  String status = "status";
  String urlProducto = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtmn5upgGeBTKUvb2HsuMIIOVYe6G-xKTYj_IBUqGtq4UkXoixgw&s";
  var fondoEstado;

  cardItemOrders(this.fecha, this.folio, this.producto, this.total, this.status, this.urlProducto);
  @override
  Widget build(BuildContext context) {
    final fondoItem = Container(
      height: 120,
      width: MediaQuery.of(context).size.width * .95,
      margin: EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        shape: BoxShape.rectangle,
      ),
    );

    if(status.contains("Entregado")){
      fondoEstado = Container(
        height: 30.0,
        width: 80,
        margin: EdgeInsets.only(left: 10.0, top: 92.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(30, 215, 96, 100),
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
          shape: BoxShape.rectangle,
        ),
      );
    }else{
      fondoEstado = Container(
        height: 30.0,
        width: 80,
        margin: EdgeInsets.only(left: 10.0, top: 92.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(234, 176, 23, 100),
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
          shape: BoxShape.rectangle,
        ),
      );
    }

    final fotoProducto = Container(
      width: 110.0,
      height: 110.0,
      margin: EdgeInsets.only(left: 200.0, top: 15.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(urlProducto)),
      ),
    );

    final fechaPedido = Container(
        margin: EdgeInsets.only(left: 10.0, top: 15.0),
        child: Text(
          "$fecha",
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black45,
          ),
        ));

    final folioPedido = Container(
        margin: EdgeInsets.only(left: 10.0, top: 30.0),
        child: Text(
          "$folio",
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
          ),
        ));

    final productoPedido = Container(
        margin: EdgeInsets.only(left: 10.0, top: 53.0),
        child: Text(
          "$producto",
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black
          ),
        ));

    final totalPedido= Container(
        margin: EdgeInsets.only(left: 10.0, top: 73.0),
        child: Text(
          "\$ $total",
          style: TextStyle(
            fontSize: 14.0,
            color: Color.fromRGBO(30, 215, 96, 100),
          ),
        ));

    final estadoPedido = Container(
        margin: EdgeInsets.only(left: 15.0, top: 99.0),
        child: Text(
          "$status",
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.white,
          ),
        ));

    final detalles = Container(
      margin : EdgeInsets.only(left: 110, top: 99.0),
      child: Text(
        "Ver Detalles",
        style: TextStyle(
          fontSize: 14.0,
          color: Color.fromRGBO(227, 143, 36, 100),
        )
      ),
    );


    return Stack(
      children: <Widget>[
        fondoItem,
        fechaPedido,
        folioPedido,
        productoPedido,
        totalPedido,
        fondoEstado,
        detalles,
        estadoPedido,
        fotoProducto,

      ],
    );
  }
}