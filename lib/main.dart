import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber =1;
  int rightDN=2;
  void func(){
    setState(() {
      rightDN=Random().nextInt(6)+1;
      leftDiceNumber=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(

            child:ElevatedButton(
              onPressed: (){
                 func();

              },

              child: Image.asset('images/dice$leftDiceNumber.png'),

            ),
          ),
          Expanded(

            child: ElevatedButton(
                onPressed: (){
                  func();

                },

                child: Image.asset('images/dice$rightDN.png')),
          ),
        ],
      ),
    );
  }
}


