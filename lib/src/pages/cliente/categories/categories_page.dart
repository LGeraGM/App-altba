import 'package:altba/src/pages/cliente/categories/backend_categories.dart';
import 'package:flutter/material.dart';

import 'package:altba/src/pages/cliente/home/home_page.dart';
import 'package:altba/src/pages/cliente/account/mi-cuenta_page.dart';
import 'package:altba/src/pages/cliente/favorites/favorites_page.dart';
import 'package:altba/src/pages/cliente/orders/orders_page.dart';
import 'package:altba/src/pages/cliente/cart/cart_page.dart';

class CategoryPage extends StatefulWidget {

  static final String routeName = 'categorias';

  @override
  _CategoryPage createState() => _CategoryPage();
}
class _CategoryPage extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    //final bloc = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorías'),
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
      body:  crearCategorias(),
      drawer: _crearMenu(context),
    );
  }
}

_crearMenu(BuildContext context){

  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Víctor Flores'),
          accountEmail: Text('test@test.com'),
          currentAccountPicture: GestureDetector(
            child: new CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person,
                color: Colors.black,
              ),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/menu-img.jpg'),
                fit: BoxFit.cover
            ),
          ),
        ),

        ListTile(
          leading: Icon( Icons.home, color: Colors.black ),
          title: Text('Inicio'),
          onTap: ()=> Navigator.pushReplacementNamed( context, HomePage.routeName ),
        ),

        ListTile(
          leading: Icon( Icons.assignment_ind, color: Colors.black ),
          title: Text('Mi cuenta'),
          onTap: ()=> Navigator.pushReplacementNamed( context, MyAccountPage.routeName ),
        ),

        ListTile(
          leading: Icon( Icons.category, color: Colors.black ),
          title: Text('Categorías'),
          onTap: ()=> Navigator.pushReplacementNamed( context, CategoryPage.routeName ),
        ),

        ListTile(
          leading: Icon( Icons.favorite, color: Colors.black ),
          title: Text('Favoritos'),
          onTap: ()=> Navigator.pushReplacementNamed( context, FavoritesPage.routeName ),
        ),

        ListTile(
          leading: Icon( Icons.check_box, color: Colors.black ),
          title: Text('Mis Pedidos'),
          onTap: ()=> Navigator.pushReplacementNamed( context, OrdersPage.routeName ),
        ),

        SizedBox( height: 150.0),
        ListTile(
          leading: Icon( Icons.backspace, color: Colors.black ),
          title: Text('Cerrar Sesión'),
          onTap: (){ },
        ),
      ],
    ),
  );

}