import 'package:flutter/material.dart';

class Text_Field extends StatelessWidget {
   Text_Field({required this.hint,required this.icon ,required this.Is_Password});

  final String hint ;
  final IconData icon ;
  final bool Is_Password ;
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  obscureText: Is_Password ,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(225, 186, 240, 245),
                    prefixIcon: Icon(
                      icon ,
                      color: Color.fromARGB(255, 116, 179, 167),
                      size: 30,
                    ),
                    hintText: hint,
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 116, 179, 167),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
              );
  }
}