import 'package:altba/src/pages/cliente/category_product_list/productsCategory_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class crearCategorias extends StatefulWidget {
  @override
  _backendState createState() => _backendState();
}
class _backendState extends State<crearCategorias> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream:
        Firestore.instance.collection('categorias').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot>snapshot){
          if(!snapshot.hasData) {
            return Center (child: CircularProgressIndicator(),);
          }
          List<DocumentSnapshot> docs = snapshot.data.documents;
          print(docs.length);
          return ListView.builder(

              itemCount: docs.length,
              itemBuilder: (context, index)
              {
                Map<String, dynamic> data = docs[index].data;
                return Container(
                  child: Card(
                    child:
                    ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        title: Text(data['nombre'], style: TextStyle(fontSize: 30.0)) ,
                        trailing: new Icon(Icons.chevron_right, size: 40.0, color: Colors.black45,),
                        dense: true,
                        onTap: () {
                          if (data.values.contains('Muebles de Cocina')){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsCategory("Muebles de Cocina")),);
                          }
                          if (data.values.contains('Muebles de Oficina')){
                            Navigator.push( context, MaterialPageRoute(builder: (context) => ProductsCategory("Muebles de Oficina")),);
                          }
                          if (data.values.contains('Muebles de Planchado')){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsCategory("Muebles de Planchado")),);
                          }
                          if (data.values.contains('Muebles de Recamara')){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsCategory("Muebles de Recamara")),);
                          }
                          if (data.values.contains('Muebles de Sala Cantinas')){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsCategory("Mueble de Sala Cantinas")),);
                          }
                        }
                    ),
                  ), );

              });
        }
    );
  }
}