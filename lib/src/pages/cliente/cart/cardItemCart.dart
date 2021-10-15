import 'package:spinner_input/spinner_input.dart';
import 'package:flutter/material.dart';

class CardItemCart extends StatelessWidget {
  double spinner = 0;
  String precio = "0000";
  String modelo = "Modelo";
  String urlProducto =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtmn5upgGeBTKUvb2HsuMIIOVYe6G-xKTYj_IBUqGtq4UkXoixgw&s";
  CardItemCart(this.modelo,this.precio, this.urlProducto);
  @override
  Widget build(BuildContext context) {
    final fondoItem = Container(
      height: 120,
      width: MediaQuery.of(context).size.width * .95,
      margin: EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        shape: BoxShape.rectangle,
      ),
    );
    final fotoProducto = Container(
      width: 110.0,
      height: 110.0,
      margin: EdgeInsets.only(left: 10.0, top: 15.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
            fit: BoxFit.cover, image: NetworkImage(urlProducto)),
      ),
    );
    final precioProducto = Container(
        margin: EdgeInsets.only(left: 130.0, top: 50.0),
        child: Text(
          "\$ $precio",
          style: TextStyle(
            fontSize: 24.0,
            color: Color.fromRGBO(210, 134, 25, 100),
          ),
        ));
    final modeloProducto = Container(
        margin: EdgeInsets.only(left: 130.0, top: 20.0),
        child: Text(
          "$modelo",
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.black,
          ),
        ));
    final numberPicker = Container(
        margin: EdgeInsets.only(left: 130.0, top: 80.0),
        child: SpinnerInput(
          minValue: 0,
          maxValue: 200,
          step: 1,
          plusButton: SpinnerButtonStyle(
              elevation: 0,
              textColor: Colors.black,
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(5)),
          minusButton: SpinnerButtonStyle(
              textColor: Colors.black,
              elevation: 0,
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(5)),
          middleNumberWidth: 70,
          middleNumberStyle: TextStyle(fontSize: 17),
          spinnerValue: spinner,
          onChange: (newValue) {},
        ));
    // TODO: implement build
    return Stack(
      children: <Widget>[
        fondoItem,
        fotoProducto,
        modeloProducto,
        precioProducto,
        numberPicker
      ],
    );
  }
}
