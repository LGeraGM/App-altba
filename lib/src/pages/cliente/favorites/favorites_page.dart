import 'package:altba/src/pages/cliente/favorites/listFavorites.dart';
import 'package:flutter/material.dart';

import 'package:altba/src/widgets/menu_widget.dart';
import 'package:altba/src/pages/cliente/cart/cart_page.dart';

class FavoritesPage extends StatelessWidget {

  static final String routeName = 'favoritos';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
        actions: <Widget>[
          IconButton(
            icon: Icon( Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon( Icons.shopping_cart),
            onPressed: ()=> Navigator.pushReplacementNamed( context, CartPage.routeName ),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          listFavorites()
        ],
      ),
      drawer: MenuWidget(),
    );
  }
}
