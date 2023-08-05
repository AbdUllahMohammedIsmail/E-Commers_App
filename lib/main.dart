import 'package:e_commers_app/Screens/SignUp_Screen.dart';
import 'package:flutter/material.dart';
import 'Screens/Home Screen/Login_Screen.dart';
import 'Screens/Start_Screen.dart';




void main(){
  runApp(E_Commers_App());
}


class E_Commers_App extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Login_Screen.id ,
      routes:
     {
        Login_Screen.id :(context) => Login_Screen(),
        SignUp_Screen.id:(context) => SignUp_Screen(),
        Start_Page.id  : (context) => Start_Page(),

     },


    );
  }
}

