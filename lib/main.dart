import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body:  DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber=1;
  int rightdicenumber=1;
  void changedicenumber(){
    leftdicenumber=Random().nextInt(6)+1;
    rightdicenumber=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Row(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton (
              onPressed: (){
                setState(() {
                  changedicenumber();
                });
                print('The leftdicenumber is now $leftdicenumber');
              },
              child: Image.asset('images/dice$leftdicenumber.png'),),
          ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton (
              onPressed: (){
                setState(() {
                  changedicenumber();
                });
                print('The rightdicenumber is now $rightdicenumber');
              },
              child: Image.asset('images/dice$rightdicenumber.png')),
          ),
          ),
        ],
      ),
    );
  }
}
