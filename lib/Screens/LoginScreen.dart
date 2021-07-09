import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
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
            Text('Login',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                TextField(
                  iconColor: Colors.white,
                  hintText: 'Username',
                  icon: Icons.person_outline,
                ),
                SizedBox(height: 50),
                TextField(
                    iconColor: Colors.white,
                    hintText: 'Password',
                    icon: Icons.lock_open_outlined
                )
              ],
            ),
            Container(
                height: 50,
                width: 200,
                child: RaisedButton(
                  color: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  onPressed: (){},
                  child: Text('Login',style: TextStyle(color: Colors.black),),
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('New User? ',style: TextStyle(color: Colors.grey),),
                Text('Register Now',style: TextStyle(color: Colors.brown),)
              ],
            )
          ],
        )
      ),
    );
  }
}
