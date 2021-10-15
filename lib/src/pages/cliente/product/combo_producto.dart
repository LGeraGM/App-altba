
import 'package:altba/src/pages/cliente/product/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComboProducto extends StatelessWidget{
  String tipoDropdown = "";

  List<String> dropdownValues;

  ComboProducto({Key key,
  @required this.tipoDropdown,
  @required this.dropdownValues});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final comboItem =Container(width: MediaQuery.of(context).size.width*.40,margin: EdgeInsets.all(5.0),
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.white)),
      child: DropdownButton<String>(
        hint: Text(tipoDropdown),
        items: dropdownValues.map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(value),
          );
        }).toList(),
        onChanged: (_) {},
      ),
    )
    ;
    return comboItem;
  }

}