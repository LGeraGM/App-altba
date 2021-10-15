import 'package:altba/src/pages/cliente/details/cardItemDate.dart';
import 'package:altba/src/pages/cliente/details/cardItemDetails.dart';
import 'package:altba/src/pages/cliente/details/cardItemTotal.dart';
import 'package:altba/src/pages/cliente/orders/cardItemOrders.dart';
import 'package:flutter/material.dart';

class listDetails extends StatelessWidget {

  var fecha, total, cantidad;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        children: <Widget>[
          cardItemDate("OD - 2019120701","Diciembre 07, 2019", "En Revision", "Diciembre 27, 2019"),
          cardItemDetails("Ropero Bosnia", "7500", "1", "https://firebasestorage.googleapis.com/v0/b/altba-bd.appspot.com/o/Categorias%2FClosets%2FClosetEstocolmo%2FCloset%20Estocolmo(1).jpg?alt=media&token=9b817a61-c060-45f1-bb21-27ccea64a24e"),
          cardItemDetails("Comoda Soccer", "7500", "1", "https://firebasestorage.googleapis.com/v0/b/altba-bd.appspot.com/o/Categorias%2FComodas%2FComodaSoccer%2FComoda%20Soccer.jpg?alt=media&token=65b2d613-4c85-4b7c-813d-feb67ef26398"),
          cardItemTotal("2", "15000")
        ],
      )
    );
  }
}