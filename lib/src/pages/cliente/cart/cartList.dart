import 'package:altba/src/pages/cliente/cart/cardItemCart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        CardItemCart("Modular Europeo","4,300","http://www.mueblesaltba.com.mx/img/productos/5c8aef4d0ed93.jpg"),
        CardItemCart("Modular Europeo","4,300","http://www.mueblesaltba.com.mx/img/productos/5c8aef4d0ed93.jpg"),
        CardItemCart("Modular Europeo","4,300","http://www.mueblesaltba.com.mx/img/productos/5c8aef4d0ed93.jpg"),
        CardItemCart("Modular Europeo","4,300","http://www.mueblesaltba.com.mx/img/productos/5c8aef4d0ed93.jpg")
      ],
    );
  }
}
