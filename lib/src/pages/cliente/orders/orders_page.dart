import 'package:flutter/material.dart';
import 'package:altba/src/pages/cliente/orders/listOrders.dart';

import 'package:altba/src/widgets/menu_widget.dart';
import 'package:altba/src/pages/cliente/cart/cart_page.dart';

class OrdersPage extends StatelessWidget{

  static final String routeName = 'pedidos';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Pedidos'),
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
      body: Stack(
        children: <Widget>[
          listOrders()
        ],
      ),
      drawer: MenuWidget(),
    );
  }
}