import 'package:altba/src/pages/cliente/details/listDetails.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Pedido'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          listDetails()
        ],
      )
    );
  }

}