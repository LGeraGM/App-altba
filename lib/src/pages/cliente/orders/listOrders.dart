import 'package:altba/src/pages/cliente/orders/cardItemOrders.dart';
import 'package:flutter/material.dart';

class listOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        children: <Widget>[
          cardItemOrders("Diciembre 07, 2019", "OD - 2019120701", "Closet Estocolmo, Comoda Soccer", "15,000", "En Revision", "https://firebasestorage.googleapis.com/v0/b/altba-bd.appspot.com/o/Categorias%2FClosets%2FClosetEstocolmo%2FCloset%20Estocolmo(1).jpg?alt=media&token=9b817a61-c060-45f1-bb21-27ccea64a24e"),
          cardItemOrders("Junio 25, 2019", "OD - 2019062502", "Comoda Soccer", "3,000", " Entregado", "https://firebasestorage.googleapis.com/v0/b/altba-bd.appspot.com/o/Categorias%2FComodas%2FComodaSoccer%2FComoda%20Soccer.jpg?alt=media&token=65b2d613-4c85-4b7c-813d-feb67ef26398"),
          cardItemOrders("Junio 25, 2019", "OD - 2019062501", "Ropero Bosnia", "5,000", " Entregado", "https://firebasestorage.googleapis.com/v0/b/altba-bd.appspot.com/o/Categorias%2FRoperos%2FRoperoBosnia%2FRopero%20Bosnia(1).jpg?alt=media&token=ba99d62b-0840-45c3-ae5b-1e670b9b8d1b"),
        ],
      ),
    );
  }
}