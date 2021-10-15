import 'package:flutter/cupertino.dart';

class Product{
  final String nombre;
  final String modeloProducto;
  final String detallesProducto;
  final String alto;
  final String ancho;
  final String fondo;
  final String precioProducto;
  final String modelo;
  final List<String> imagenes;


  Product({Key key,
    @required this.nombre,
    @required this.modeloProducto,
    @required this.detallesProducto,
    @required this.alto,
    @required this.ancho,
    @required this.fondo,
    @required this.modelo,
    @required this.precioProducto,
    @required this.imagenes
  });
}