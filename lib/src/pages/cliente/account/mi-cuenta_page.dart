import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:altba/src/pages/cliente/account/ListMueb.dart';

import 'package:altba/src/pages/cliente/home/home_page.dart';
import 'package:altba/src/pages/cliente/categories/categories_page.dart';
import 'package:altba/src/pages/cliente/favorites/favorites_page.dart';
import 'package:altba/src/pages/cliente/orders/orders_page.dart';
import 'package:altba/src/pages/cliente/cart/cart_page.dart';


final imagen = Container(
  margin: EdgeInsets.only(
    top:80.0,
    left: 20.0,
  ),
  decoration: BoxDecoration(
      color: Colors.yellow,  //PARA PROBAR CONTAINER
      borderRadius: new BorderRadius.circular(2.0),
      boxShadow: [new BoxShadow(          //SOMBRA
        color: Color(0xffA4A4A4),
        offset: Offset(1.0, 5.0),
        blurRadius: 3.0,
      ),]

  ),

  child: Image.network('https://image.shutterstock.com/image-photo/profile-beautiful-young-darkskinned-woman-260nw-714361942.jpg'),
  height: 220.0,
  width: 330.0,

);
class MyAccountPage extends StatefulWidget {

  static final String routeName = 'micuenta';

  @override
  _MyAccountPageState createState() => _MyAccountPageState();
}
final int Muebleria=0;
String nom='Juan Reyes',tel='786-132-11-83',dir='Vicente Guerrero, Col. La Mangana #200 ',correo='juan_reyes123@gmail.com';
class _MyAccountPageState extends State<MyAccountPage> {
  final TextEditingController customController = TextEditingController();
  MyAlertDialogNom(){

    return showDialog(context: context, builder: ( BuildContext context){
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

  @override
  Widget build(BuildContext context,) {

    return new Scaffold(

      appBar: AppBar(
        title: Text('Mi Cuenta'),
        backgroundColor: Colors.black,
        elevation: 0.1,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white,), onPressed: () {}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,),
              onPressed: ()=> Navigator.pushReplacementNamed( context, CartPage.routeName ),)
        ],
      ),
      body: Container(
        color:  Colors.black12,
        child: ListView(

          children:  <Widget>[
            Stack(

              children: <Widget>[

                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                      radius: 90,
                      backgroundColor: Color(0xff476cfb),




                      child: Image(
                        image: NetworkImage('https://i.dlpng.com/static/png/1647142-profilepng-512512-profile-png-512_512_preview.png'),
                      )



                  ),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 230,vertical: 100),

                  child: IconButton(
                      icon: Icon(
                        Icons.camera_alt,
                        size: 30.0,
                      ),
                      onPressed: (){

                      }
                  ) ,
                )
              ],
            ),
            Card(

                child: ListTile(

                  title: Text('Nombre',style: TextStyle( color: Colors.black45)),
                  subtitle: Text('$nom',
                    style: TextStyle(
                        color: Colors.black, fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),

                  trailing: IconButton(
                      icon: Icon(Icons.edit,  color: Colors.black),
                      onPressed: () {
                        MyAlertDialogNom();
                      }),
                )),
            Card(
              child: ListTile(
                title: Text('Correo',style: TextStyle( color: Colors.black45)),
                subtitle: Text('$correo',
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
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Direccion' ,style: TextStyle( color: Colors.black45)),
                subtitle: Text('$dir',
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
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Telefono',style: TextStyle( color: Colors.black45)),
                subtitle: Text('$tel',
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
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Mueblerias registradas',style: TextStyle(
                    color: Colors.black, fontSize: 16.0,
                    fontWeight: FontWeight.bold),),
                trailing: IconButton(
                    icon: Icon(Icons.arrow_forward,color: Colors.black),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ListaMue(Muebleria)) );
                    }),

              ),
            ),
          ],
        ),),
      drawer: _crearMenu( context ),
    );
  }

  imagen (){

  }
  getItem() {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Container(

            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100.0)),
              color: Colors.redAccent,
            ),
            child: Align(
              child:  Image(
                image: NetworkImage('https://image.shutterstock.com/image-photo/profile-beautiful-young-darkskinned-woman-260nw-714361942.jpg'),

              ),
            ) ,
          ),],
      ),
    );

  }

}
Widget _crearLista(String textTitle) {
//Orientation.landscape;
  return new  Card(

    child: ListTile(

      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 28),

      title: new Text(textTitle,
          style: TextStyle(fontSize: 30.0),
          overflow: TextOverflow.ellipsis, maxLines: 1
      ),
      trailing: IconButton(
        icon: Icon(Icons.mode_edit, size: 70.0, color: Colors.black45),

      ),

      dense: true,
      onTap: (){},

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
            onTap: (){ },
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
      ),
    );


  }
