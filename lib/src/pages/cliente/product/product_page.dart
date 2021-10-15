import 'package:altba/src/pages/cliente/product/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:altba/src/pages/cliente/product/carousel_producto.dart';
import 'combo_producto.dart';
import 'descripcion_producto.dart';
import 'package:altba/src/pages/cliente/cart/cart_page.dart';
import 'detalles_producto.dart';

class ProductPage extends StatelessWidget {

  static final String routeName = 'producto';
  final Product product;

  ProductPage({
    Key key,
    @required this.product
  });


  @override
  Widget build(BuildContext context) {

    String modeloProducto = product.modeloProducto;
    String detallesProducto = product.detallesProducto;
    String alto = product.alto;
    String ancho = product.ancho;
    String fondo = product.fondo;
    String precioProducto = product.precioProducto;
    String modelo = product.modelo;
    List<String> modelos = List<String>();
    modelos.add(modelo);
    List<String> imagenes = product.imagenes;

    final botonAnadirCarro = ButtonTheme(
      height: 50,
      alignedDropdown: true,
      child: RaisedButton(
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(5.0),
        ),
        color: Colors.orange,
        child: Text("Añadir a carrito"),
        onPressed: () {},
      ),
    );
    final muestraPrecioProducto = Text(
      precioProducto.toString(),
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.orange, fontSize: 20.0),
    );
    //ACCIONES
    final contenedorPrecioProducto = Column(
      children: <Widget>[
        Container(
            child: Text("PRECIO")),
        Container(
            child: muestraPrecioProducto)
      ],
    );

    return Scaffold(
        appBar: AppBar(
          title: Text(modeloProducto),
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
        shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              primary: false,
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height-150,
                    child: ListView(
                      children: <Widget>[
                        CarouselProducto(imgList: imagenes,),
                        SizedBox(height: 10.0),
                        DetallesProducto(modeloProducto,alto.toString(), ancho.toString() , fondo.toString()),
                        Column(
                          children: <Widget>[
                            Wrap(
                              children: <Widget>[
                                ComboProducto(dropdownValues: modelos, tipoDropdown: "Modelos",),
                              ],
                            )
                          ],
                        ),
                        DescripcionProducto(detallesProducto)
                      ],
                    ),
                  ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  child:
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      contenedorPrecioProducto,
                      botonAnadirCarro
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }



}

void setState(Null Function() param0) {
}

