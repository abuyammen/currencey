import 'package:flutter/material.dart';
import 'package:currency_converter/constants.dart';
import 'package:currency_converter/firstHalf1.dart';
import 'package:currency_converter/secondHalf.dart';
/////////////////////////////start class home/////////////////////////////////////////////
class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Container(
      alignment: Alignment.center,
      color: Colors.blue[200],
      child: Text('Welcome\n    To\nCurrency\nConverter', style: TextStyle(fontSize:30)),
    ),
    );
  }
}
/////////////////////////////end class home///////////////////////////////////////////////
///////////////////////////// start class length///////////////////////////////////////////
class lengthScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _lengthScreen();
  }
}

class _lengthScreen extends State<lengthScreen> {
  String fromCurrency = 'mm';
  String toCurrency='mm';
  double textValue = 1.0;
  String result = '0';
  setFromCurrency(int value) {
    this.fromCurrency = theLength[value];
    calculateProcess();
      print(fromCurrency);
  }

  setToCurrency(int value) {
    this.toCurrency = theLength[value];
    calculateProcess();
  }

  setTextValue(String value) {
    this.textValue = double.parse(value);
    calculateProcess();
    
    
  }

  calculateProcess() {
    double res =
        theLengthMap[fromCurrency] / theLengthMap[toCurrency]*textValue;
    result = res.toString();
    print(result);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              child: FirstHalf(
            listVariable:theLength,    
            firstCurrencyFunction: setFromCurrency,
            secondCurrencyFunction: setToCurrency,
            textFieldFunction: setTextValue,
          )),
          Expanded(
              child: SecondHalf(
            result: result,
          ))
        ],
      ),
    );
  }
}
///////////////////////////end class length////////////////////////////

//////////////////////////start class mas//////////////////////////////
class massScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _massScreen();
  }
}

class _massScreen extends State<massScreen> {
  String fromCurrency = 'g';
  String toCurrency='g';
  double textValue = 1.0;
  String result = '0';
  setFromCurrency(int value) {
    this.fromCurrency = theMass[value];
    calculateProcess();
      print(fromCurrency);
  }

  setToCurrency(int value) {
    this.toCurrency = theMass[value];
    calculateProcess();
  }

  setTextValue(String value) {
    this.textValue = double.parse(value);
    calculateProcess();
    
    
  }

  calculateProcess() {
    double res =
        theMassMap[fromCurrency] /  theMassMap[toCurrency]*textValue;
    result = res.toString();
    print(result);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              child: FirstHalf(
            listVariable:theMass,    
            firstCurrencyFunction: setFromCurrency,
            secondCurrencyFunction: setToCurrency,
            textFieldFunction: setTextValue,
          )),
          Expanded(
              child: SecondHalf(
            result: result,
          ))
        ],
      ),
    );
  }
}
//////////////////////////end class mass////////////////////

/////////////////////////start class Time/////////////////////
class timeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _timeScreen();
  }
}

class _timeScreen extends State<timeScreen> {
  String fromCurrency = 'sec';
  String toCurrency='sec';
  double textValue = 1.0;
  String result = '0';
  setFromCurrency(int value) {
    this.fromCurrency = theTime[value];
    calculateProcess();
      print(fromCurrency);
  }

  setToCurrency(int value) {
    this.toCurrency = theTime[value];
    calculateProcess();
  }

  setTextValue(String value) {
    this.textValue = double.parse(value);
    calculateProcess();
    
    
  }

  calculateProcess() {
    double res =
        theTimeMap[fromCurrency] / theTimeMap[toCurrency]*textValue;
    result = res.toString();
    print(result);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              child: FirstHalf(
            listVariable:theTime,    
            firstCurrencyFunction: setFromCurrency,
            secondCurrencyFunction: setToCurrency,
            textFieldFunction: setTextValue,
          )),
          Expanded(
              child: SecondHalf(
            result: result,
          ))
        ],
      ),
    );
  }
}
////////////////////////end class Time/////////////////////////////////
