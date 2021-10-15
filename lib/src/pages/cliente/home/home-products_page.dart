import 'package:flutter/material.dart';

import 'package:altba/src/pages/cliente/product/product_page.dart';

class HomeProducts extends StatefulWidget {
  @override
  _HomeProductsState createState() => _HomeProductsState();
}

class _HomeProductsState extends State<HomeProducts> {
  var product_list = [
    {
      "nombre": "Ropero Venecia",
      "foto": "assets/eureopeo.jpg",
      "categoria": "Roperos",
      "precio": 3500,
    },
    {
      "nombre": "Tocador Morelia",
      "foto": "assets/eureopeo.jpg",
      "categoria": "Recamaras",
      "precio": 2900,
    },
    {
      "nombre": "Dispensador de agua",
      "foto": "assets/eureopeo.jpg",
      "categoria": "Cocina",
      "precio": 1800,
    },
    {
      "nombre": "Modular Europeo",
      "foto": "assets/eureopeo.jpg",
      "categoria": "Mueble",
      "precio": 4300,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prodNombre: product_list[index]['nombre'],
            prodFoto: product_list[index]['foto'],
            prodCateg: product_list[index]['categoria'],
            prodPrecio: product_list[index]['precio'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prodNombre;
  final prodFoto;
  final prodCateg;
  final prodPrecio;

  Single_prod({
    this.prodNombre,
    this.prodFoto,
    this.prodCateg,
    this.prodPrecio,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prodNombre,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, ProductPage.routeName),
            child: GridTile(
              child: Image.asset(
                prodFoto,
                fit: BoxFit.cover,
              )
            ),
          ),
        ),
      ),
    );
  }
}
