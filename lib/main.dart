import 'package:flutter/material.dart';
import 'package:altba/src/bloc/provider.dart';
import 'package:altba/src/pages/cliente/login/login_page.dart';
import 'package:altba/src/pages/cliente/home/home_page.dart';
import 'package:altba/src/pages/cliente/account//mi-cuenta_page.dart';
import 'package:altba/src/pages/cliente/categories/categories_page.dart';
import 'package:altba/src/pages/cliente/favorites/favorites_page.dart';
import 'package:altba/src/pages/cliente/orders/orders_page.dart';
import 'package:altba/src/pages/cliente/cart/cart_page.dart';
import 'package:altba/src/pages/cliente/product/product_page.dart';
import 'package:altba/src/pages/cliente/category_product_list/productsCategory_page.dart';

import 'package:altba/src/preferencias_usuario/preferencias_usuario.dart';
void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final prefs = new PreferenciasUsuario();
    print( prefs.token );

    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Altba',
        initialRoute: 'home',
        routes: {
          'login'       : ( BuildContext context ) => LoginPage(),
          'home'        : ( BuildContext context ) => HomePage(),
          'micuenta'    : ( BuildContext context ) => MyAccountPage(),
          'categorias'  : ( BuildContext context ) => CategoryPage(),
          'favoritos'   : ( BuildContext context ) => FavoritesPage(),
          'pedidos'     : ( BuildContext context ) => OrdersPage(),
          'carrito'     : ( BuildContext context ) => CartPage(),
        },
        theme: ThemeData(
            primaryColor: Colors.black
        ),
      ),
    );
  }
}
