import 'package:flutter/material.dart';

import '../Widgets/Text_Field.dart';
import 'Home Screen/Login_Screen.dart';
import 'Start_Screen.dart';

class SignUp_Screen extends StatelessWidget {
  const SignUp_Screen({super.key});
  static String id = 'SignUp_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 116, 179, 167),
        body: Center(
          child: ListView(
            children:[Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 171, 233, 239),
                  radius: 102,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 116, 179, 167),
                    radius: 100,
                    backgroundImage: AssetImage('images/icon/icons8-buy-100.png'),
                  ),
                ),
                Text(
                  'Shop.com',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 30,
                    color: Color.fromARGB(255, 171, 233, 239),
                  ),
                ),
                SizedBox(height: 20),
                Text_Field(
                  icon: Icons.person,
                  hint: 'Enter Your Name',
                  Is_Password: false,
                ),
                SizedBox(height: 15),
                Text_Field(
                  icon: Icons.email,
                  hint: 'Enter Your Email',
                  Is_Password: false,
                ),
                SizedBox(height: 15),
                Text_Field(
                  icon: Icons.lock,
                  hint: 'Enter Your PassWord',
                  Is_Password: true,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 171, 233, 239),
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    Navigator.pushNamed(context, Start_Page.id);
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color.fromARGB(255, 116, 179, 167),
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Text(
                        "Do You already Have an Account ? ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 171, 233, 239),
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, Login_Screen.id);
                        },
                        child: Text(
                          "SignIn",
                          style: TextStyle(
                            color: Colors.black ,
                            fontSize: 17,
                          ),
                        ),
                      )
                      
                    ],
                  ),
                ),
              ],
            ),] 
          ),
        ),
    );
  }
}