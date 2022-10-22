import 'package:chatapp/Mybtn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Chatroom.dart';
class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                 textAlign:TextAlign.center,
                 decoration: InputDecoration(
                 hintText:"enter the username",
                 border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))
         ),
                ),

                ),
              ),
            ),
          ),
         Padding(
           padding: EdgeInsets.only(bottom: 8),
           child: Padding(
             padding: EdgeInsets.symmetric(horizontal: 50),
             child: TextField(
               textAlign:TextAlign.center,
               decoration: InputDecoration(
                 hintText:"enter the password",
                 border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))
                 ),
               ),

             ),
           ),
         ),
          Padding(
              child: Mybtn(clr: Colors.deepPurple, txt: "Signin", onpre: ()
              {
                Get.to(Chatroom());
              }
              ),
              padding: EdgeInsets.symmetric(horizontal: 50)

          )
                ]),
                 );
    }
}