import 'package:altba/src/pages/cliente/category_product_list/lista_prod.dart';
import 'package:flutter/material.dart';

import 'package:altba/src/pages/cliente/home/home_page.dart';
import 'package:altba/src/pages/cliente/account/mi-cuenta_page.dart';
import 'package:altba/src/pages/cliente/categories/categories_page.dart';
import 'package:altba/src/pages/cliente/favorites/favorites_page.dart';
import 'package:altba/src/pages/cliente/orders/orders_page.dart';
import 'package:altba/src/pages/cliente/cart/cart_page.dart';

class ProductsCategory extends StatefulWidget {

  static final String routeName = 'productscat';
  final String texto;
  ProductsCategory(this.texto);
  @override
  _ProductsCategory createState() => _ProductsCategory();
}

class _ProductsCategory extends State<ProductsCategory> {
  /* TextEditingController _texto;
  @override
  void initState() {
    _texto = TextEditingController(text: widget.texto);
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Titulo(widget.texto),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(icon: Icon(Icons.shopping_cart),
            onPressed: ()=> Navigator.pushReplacementNamed( context, CartPage.routeName ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListaProductos(widget.texto)
        ],
      ),
      drawer: _crearMenu( context ),
    );
  }
}

Widget Titulo (String dato) {
  var tex;
  if(dato=="Muebles de Cocina"){
    tex="Cocina";
  }
  if(dato=="Muebles de Oficina"){
    tex="Oficina";
  }
  if(dato=="Muebles de Planchado"){
    tex="Planchado";
  }
  if(dato=="Muebles de Recamara"){
    tex="Recamara";
  }
  if(dato=="Muebles de Sala Cantina"){
    tex="Sala";
  }
  return Text(tex);
}

Widget _crearCategoria(String textTitle) {
  return new Card(

    child: ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 28),
      title: new Text(textTitle, style: TextStyle(fontSize: 30.0),),
      trailing: new Icon(
        Icons.chevron_right, size: 70.0, color: Colors.black45,),
      dense: true,
      onTap: () {},

    ),
    color: Colors.white,
  );
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
      )
  );
}