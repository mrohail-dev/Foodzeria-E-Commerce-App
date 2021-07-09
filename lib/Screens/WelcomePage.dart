import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class WelcomePage extends StatelessWidget {
  Widget button({@required String name, Color color,}){
    return Container(
      height: 50,
      width: 300,
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.yellow,width: 2),
            borderRadius: BorderRadius.circular(30),
        ),
        onPressed: (){},
        child: Text(name),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(808080),
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          Expanded(child: Container(
            child: Center(
              child: Image.asset('images/logor.png',
                height: 320,width: 200,
              ),
            ),
          ),
          ),
          Expanded(child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Welcome To Papa Pizzeria',
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.brown,letterSpacing: 2,),
                ),
                Column(
                  children: [
                    Text('Order Pizza from Papa Pizzeria App',style: TextStyle(color: Colors.white)),
                    Text('Make Reservation in Real Time',style: TextStyle(color: Colors.white),)
                  ],
                ),
                button(
                  name: 'Login',
                  color: Colors.yellow
                ),
                button(
                  name: 'SignUp',
                  color: Colors.yellow
                )
              ],
            ),
          ),),
        ],
      ),
     );
  }
}
