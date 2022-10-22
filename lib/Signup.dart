import 'package:flutter/material.dart';
import 'Mybtn.dart';
import 'package:get/get.dart';
import 'Chatroom.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "enter the username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
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
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "enter the password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),

                ),
              ),
            ),
            Padding(
                child: Mybtn(clr: Colors.deepPurple, txt: "SignUp", onpre: () {
                  Get.to(Chatroom());
                }
                ),
                padding: EdgeInsets.symmetric(horizontal: 50)

            )
          ]),
    );
  }
}
