import 'package:flutter/material.dart';
import 'Mybtn.dart';
import 'SignIn.dart';
import 'package:get/get.dart';
import 'Signup.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}
class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("hello to chat app", style: TextStyle(
              color: Colors.black
          ),)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

         Padding(
           padding: const EdgeInsets.only(bottom: 8.0),
           child: Mybtn(clr: Colors.deepPurple, txt: "SignIn" , onpre: (){
             Get.to(Signin());
           },),
         ),
         Mybtn(clr: Colors.deepPurple, txt: "signUp", onpre: (){
           Get.to(Signup());
         })
          ],
        ),
      )
      ,
      );
  }
}
