import 'package:flutter/material.dart';

class Mybtn extends StatelessWidget {

Mybtn({required this.clr , required this.txt , required this.onpre});

  final String txt;
  final Color clr;
  final VoidCallback onpre;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      color: Colors.blue,
      child: MaterialButton(onPressed: onpre,
        child:Text(txt),

      )
    );
  }
}
