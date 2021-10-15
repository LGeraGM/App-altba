import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

String nomM='Muebleria Altba', correoM='altba_123@gmail.com',dirM='Guadalupe Victoria, Col. Francisco Villa #206', telM='786-152-59-78', rfc='7DEF185D', cp='61025';
class EditarMue extends StatelessWidget{
  final TextEditingController customController = TextEditingController();

  get context => null;

  
  MyAlertDialogNom(){



    return showDialog(context: context ,builder: ( BuildContext context){
      return AlertDialog (

        title: Text('Nuevo nombre'),
        content: TextField(
          controller: customController,
        ),
        actions: <Widget> [
          MaterialButton(
            elevation: 5.0,
            child: Text('Guardar'),
            onPressed: (){
              Navigator.of(context).pop(customController.text.toString());
            },
          ),MaterialButton(
            elevation: 5.0,
            child: Text('Cancelar'),
            onPressed: (){
              Navigator.of(context).pop(customController.text.toString());
            },
          )
        ],



      );
    });
  }
  MyAlertDialogTel(){

    return showDialog(context: context, builder: ( BuildContext context){
      return AlertDialog (

        title: Text('Nuevo telefono'),
        content: TextField(
          controller: customController,
        ),
        actions: <Widget> [
          MaterialButton(
            elevation: 5.0,
            child: Text('Guardar'),
            onPressed: (){
              Navigator.of(context).pop(customController.text.toString());
            },
          ),MaterialButton(
            elevation: 5.0,
            child: Text('Cancelar'),
            onPressed: (){
              Navigator.of(context).pop(customController.text.toString());
            },
          )
        ],



      );
    });
  }
  MyAlertDialogDir(){

    return showDialog(context: context, builder: ( BuildContext context){
      return AlertDialog (

        title: Text('Nuevo direccion'),
        content: TextField(
          controller: customController,
        ),
        actions: <Widget> [
          MaterialButton(
            elevation: 5.0,
            child: Text('Guardar'),
            onPressed: (){
              Navigator.of(context).pop(customController.text.toString());
            },
          ),MaterialButton(
            elevation: 5.0,
            child: Text('Cancelar'),
            onPressed: (){
              Navigator.of(context).pop(customController.text.toString());
            },
          )
        ],



      );
    });
  }
  MyAlertDialogCorreo(){

    return showDialog(context: context, builder: ( BuildContext context){
      return AlertDialog (

        title: Text('Nuevo correo'),
        content: TextField(
          controller: customController,
        ),
        actions: <Widget> [
          MaterialButton(
            elevation: 5.0,
            child: Text('Guardar'),
            onPressed: (){
              Navigator.of(context).pop(customController.text.toString());
            },
          ),MaterialButton(
            elevation: 5.0,
            child: Text('Cancelar'),
            onPressed: (){
              Navigator.of(context).pop(customController.text.toString());
            },
          )
        ],



      );
    });
  }
  MyAlertDialogCP(){

    return showDialog(context: context, builder: ( BuildContext context){
      return AlertDialog (

        title: Text('Nuevo codigo postal'),
        content: TextField(
          controller: customController,
        ),
        actions: <Widget> [
          MaterialButton(
            elevation: 5.0,
            child: Text('Guardar'),
            onPressed: (){
              Navigator.of(context).pop(customController.text.toString());
            },
          ),MaterialButton(
            elevation: 5.0,
            child: Text('Cancelar'),
            onPressed: (){
              Navigator.of(context).pop(customController.text.toString());
            },
          )
        ],



      );
    });
  }
  MyAlertDialogRFC(){

    return showDialog(context: context, builder: ( BuildContext context){
      return AlertDialog (

        title: Text('Nuevo RFC'),
        content: TextField(
          controller: customController,
        ),
        actions: <Widget> [
          MaterialButton(
            elevation: 5.0,
            child: Text('Guardar'),
            onPressed: (){
              Navigator.of(context).pop(customController.text.toString());
            },
          ),MaterialButton(
            elevation: 5.0,
            child: Text('Cancelar'),
            onPressed: (){
              Navigator.of(context).pop(customController.text.toString());
            },
          )
        ],



      );
    });
  }
  final int Muebleria;
  EditarMue(this.Muebleria);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Muebleria'),
        backgroundColor: Colors.black,
        elevation: 0.1,
        actions: <Widget>[


        ],
      ),
      body: Builder(
        builder: (context)=> Container(
          child: ListView(
            children:  <Widget>[
              ListTile(

                title: Text('Nombre'),
                subtitle: Text('Muebleria Altba',
                  style: TextStyle(
                      color: Colors.black, fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),

                trailing: IconButton(
                    icon: Icon(Icons.edit,  color: Colors.black),
                    onPressed: () {
                      MyAlertDialogNom();
                    }),
              ),//Nombre
              Divider(),
              ListTile(
                title: Text('Correo'),
                subtitle: Text('altba_123@gmail.com',
                  style: TextStyle(
                      color: Colors.black, fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                onTap: (){},
                trailing: IconButton(
                    icon: Icon(Icons.edit,  color: Colors.black),
                    onPressed: () {
                      MyAlertDialogCorreo();
                    }),
              ),//correo
              Divider(),
              ListTile(
                title: Text('Direccion'),
                subtitle: Text('Guadalupe Victoria, Col. Francisco Villa #206',
                    style: TextStyle(
                      color: Colors.black, fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,maxLines: 1
                ),
                onTap: (){},
                trailing: IconButton(
                    icon: Icon(Icons.edit,  color: Colors.black),
                    onPressed: () {
                      MyAlertDialogDir();
                    }),
              ), //direccion
              Divider(),
              ListTile(
                title: Text('Telefono'),
                subtitle: Text('786-152-59-78',
                  style: TextStyle(
                      color: Colors.black, fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                onTap: (){},
                trailing: IconButton(
                    icon: Icon(Icons.edit,  color: Colors.black),
                    onPressed: () {
                      MyAlertDialogTel();
                    }),
              ), //telefono
              Divider(),
              ListTile(
                title: Text('RFC'),
                subtitle: Text('7DEF185D',
                  style: TextStyle(
                      color: Colors.black, fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                onTap: (){},
                trailing:IconButton(
                    icon: Icon(Icons.edit,  color: Colors.black),
                    onPressed: () {
                      MyAlertDialogRFC();
                    }),
              ),// RFC
              Divider(),
              ListTile(
                title: Text('Codigo Postal'),
                subtitle: Text('61025',
                  style: TextStyle(
                      color: Colors.black, fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                onTap: (){},
                trailing:IconButton(
                    icon: Icon(Icons.edit,  color: Colors.black),
                    onPressed: () {
                      MyAlertDialogCP();
                    }),
              ),// CP
              Divider(),

            ],
          ),),),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}