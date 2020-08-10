import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:currency_converter/constants.dart';

class CurrencyPicker extends StatelessWidget{
  List<String>listConstantSelected;
   Function selectItemFunction;
  CurrencyPicker(this.listConstantSelected,this.selectItemFunction);
  @override
  Widget build(BuildContext context) {
  
   return CupertinoPicker(itemExtent: 30, onSelectedItemChanged: (value) => selectItemFunction(value), 
   children: listConstantSelected.map((e) => Text(e)).toList()
   );
  }

}