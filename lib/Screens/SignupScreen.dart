import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SignUp extends StatelessWidget {
  Widget TextField({@required String hintText,@required IconData icon,@required Color iconColor}){
    return
      TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(icon,color:iconColor,),
            hintText: hintText,
            hintStyle: TextStyle(color:Colors.white),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.brown)
            )
        ),
      );
  }
  Widget button({@required String buttonname, @required Color color}){
    return Container(
           child: RaisedButton(
             color: color,
           shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30),),
           child: Text(buttonname),
           onPressed: (){},),
       );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.yellow,), onPressed: (){}),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 50),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Sign Up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextField(
                      iconColor: Colors.white,
                      hintText: 'Name',
                      icon: Icons.person_outline,
                    ),
                    TextField(
                        iconColor: Colors.white,
                        hintText: 'Username',
                        icon: Icons.person_pin_outlined
                    ),
                    TextField
                      (
                        iconColor: Colors.white,
                        hintText: 'Password',
                        icon: Icons.lock_open_outlined
                    ),
                    TextField(
                        iconColor: Colors.white,
                        hintText: 'Confirm Password',
                        icon: Icons.lock_open_outlined
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button(
                    buttonname: 'Cancel',
                    color: Colors.grey
                  ),
                  SizedBox(width: 10,),
                  button(
                    buttonname: 'Register',
                    color: Colors.yellow
                  ),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
