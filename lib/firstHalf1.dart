import 'package:flutter/material.dart';
import 'package:currency_converter/inputText.dart';
import 'package:currency_converter/picker.dart';

class FirstHalf extends StatelessWidget {
  List<String>listVariable;
  Function firstCurrencyFunction;
  Function secondCurrencyFunction;
  Function textFieldFunction;
  FirstHalf({this.listVariable,this.firstCurrencyFunction,this.secondCurrencyFunction,this.textFieldFunction});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(children: <Widget>[
        Expanded(child: CurrencyPicker(listVariable,firstCurrencyFunction)),
        Expanded(child: InputText(textFieldFunction)),
         Expanded(child: CurrencyPicker(listVariable,secondCurrencyFunction)),
      ],),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red[700], Colors.red[100]],stops: [0,0.5])),
    );
  }
}
