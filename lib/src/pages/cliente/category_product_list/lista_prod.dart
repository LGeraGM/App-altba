import 'package:altba/src/pages/cliente/category_product_list//card.dart';
import 'package:altba/src/pages/cliente/product/product.dart';
import 'package:altba/src/pages/cliente/product/product_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ListaProductos extends StatelessWidget {
  final String texto;
  ListaProductos(this.texto);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: StreamBuilder(
        //texto, es lo maleny envia, es decir,
        // el nombre de la categoria como este registrado en la informacion del producto
        stream:  Firestore.instance.collection("productos").where('categoria', isEqualTo: texto).snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          List<DocumentSnapshot> docs = snapshot.data.documents;
          return ListView.builder(
              itemCount: docs.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> data = docs[index].data;
                List<String> reviewers;
                reviewers = List.from(data['imagenes']);
                String url = reviewers[0];
                Product producto = Product(
                    nombre:data['nombre'],
                    modelo:data['modelo'],
                    fondo:data['fondo'],
                    ancho:data['ancho'],
                    alto:data['alto'],
                    precioProducto:data['precio'],
                    detallesProducto:data['descripcion'],
                    imagenes:List.from(data['imagenes']),
                    modeloProducto: data['modelo']
                );
                return GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      cardsItems(data['nombre'], data['categoria'], data['precio'], url),
                    ],
                  ),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ProductPage(product: producto)));
                  }
                );

              });
        },
      ),
    );
  }
}