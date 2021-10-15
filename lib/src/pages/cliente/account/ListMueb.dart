import 'package:altba/src/pages/cliente/account/Editar.dart';
import 'package:flutter/material.dart';


class ListaMue extends StatelessWidget{

  final String nom="";
  final int Muebleria;
  ListaMue(this.Muebleria);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('Mueblerias Registradas'),
        backgroundColor: Colors.black,
        elevation: 0.1,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.playlist_add, color: Colors.white,), onPressed: () {
            //Navigator.push(context,
            //  MaterialPageRoute(builder: (context) => agregarMue(Muebleria)) );
          }),
        ],
      ),
      body: Builder(
        builder: (context)=> Container(
          child: ListView(
            children:  <Widget>[
              ListTile(

                title: Text('Muebleria Altba',
                  style: TextStyle(
                      color: Colors.black, fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),

                trailing: IconButton(
                    icon: Icon(Icons.edit, color:  Colors.black,),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EditarMue(Muebleria)) );
                    }),
              ),
              Divider(),
            ],
          ),),),

    );
  }
  ListView _buildListView(){
    return ListView.builder(
      itemCount: 100,
      itemBuilder: ( _, index){
        return ListTile(
          title: Text('$nom'),
          leading:  Icon(Icons.thumb_up),
        );
      },
    );
  }
}