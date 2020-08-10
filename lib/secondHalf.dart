import 'package:flutter/material.dart';

class SecondHalf extends StatelessWidget {
  String result;
  SecondHalf({this.result});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(child: Text(result,style: TextStyle(fontSize: 50),)),
    decoration: new BoxDecoration(
    borderRadius: new BorderRadius.circular(16.0),
    color: Colors.blue[50],
    )
    );
  }
}
