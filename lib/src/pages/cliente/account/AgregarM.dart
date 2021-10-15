import 'package:flutter/material.dart';


class agregarMue extends StatefulWidget{
  @override
  final int Muebleria;
  agregarMue(this.Muebleria);
  final TextEditingController textEditingController= new TextEditingController();
  String nom,dir,tel,cp,rfc,correo;
  State<StatefulWidget> createState() {
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar: AppBar(
          title: Text('Agregar Muebleria'),
          backgroundColor: Colors.black,
          elevation: 0.1,
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.save, color: Colors.white,),
              onPressed: () {
                // var route = new MaterialPageRoute(
                //   builder: (context) => new ListaMue( textEditingController.toString()),
                // ),

              },


            ),
          ],
        ),
        body: new Container(
          child: new ListView(
            children: <Widget>[
              ListTile(
                title:  Text('Nombre'),
                subtitle:  new TextField(
                  controller: textEditingController,
                  style: TextStyle(
                      color: Colors.black, fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],


          ),
        ),
      );
    }
  }

}