import 'dart:ui';
import 'package:flutter/material.dart';

class cardItemDate extends StatelessWidget{
  String folio = "AA - 0000000000";
  String fecha = "Enero 01, 2010";
  String status = "status";
  String fechaEntrega = "Enero 01, 2010";
  var fondoEstado;

  cardItemDate(this.folio, this.fecha, this.status, this.fechaEntrega);
  @override
  Widget build(BuildContext context) {
    final fondo = Container(
      height: 120,
      width: MediaQuery.of(context).size.width * .95,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle
      ));

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
        height: 40.0,
        width: 100,
        margin: EdgeInsets.only(left: 230.0, top: 80.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(234, 176, 23, 100),
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
          shape: BoxShape.rectangle,
        ),
      );
    }

    final estadoPedido = Container(
      margin: EdgeInsets.only(left: 234, top: 90),
      child: Text(
        "$status",
        style: TextStyle(
          fontSize: 18,
          color: Colors.white
        )
      ));

    final folioPedido = Container(
      margin: EdgeInsets.only(left: 10, top: 15),
      child: Text(
        "Pedido: $folio",
        style: TextStyle(
          fontSize: 20,
          color: Colors.black
        )
      ),
    );

    final fechaEnt = Container(
        margin: EdgeInsets.only(left: 13, top: 75),
        child: Text(
          "Fecha de Entrega: \n" + "$fechaEntrega",
          style: TextStyle(
              fontSize: 18,
              color: Colors.black45
          ),
        )
    );

    final fechaPedido = Container(
        margin: EdgeInsets.only(left: 13, top: 45),
        child: Text(
          "$fecha",
          style: TextStyle(
              fontSize: 18,
              color: Colors.black45
          ),
        )
    );

    return Stack(
      children: <Widget>[
        fondo,
        fondoEstado,
        estadoPedido,
        folioPedido,
        fechaPedido,
        fechaEnt
      ]
    );
  }

}