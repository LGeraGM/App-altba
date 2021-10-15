import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:altba/src/widgets/menu_widget.dart';
import 'package:altba/src/widgets/carousel_slider_widget.dart';

import 'package:altba/src/pages/cliente/cart/cart_page.dart';

import 'package:altba/src/pages/cliente/home/home-products_page.dart';


class HomePage extends StatefulWidget {

  //const HomePage({Key key, this.user,}) : super(key: key);
  //final AuthResult user;

  static final String routeName = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Altba Inicio'),
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
            body: ListView(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Column(children: [
                      CarouselWithIndicator(),
                    ]
                    )
                ),
                Container(
                  height: 500.0,
                  child: HomeProducts(),
                )
              ],
            ),
            drawer: MenuWidget(),
          );
  }
}