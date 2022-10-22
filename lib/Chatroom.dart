import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Chatroom extends StatefulWidget {
  const Chatroom({Key? key}) : super(key: key);

  @override
  State<Chatroom> createState() => _ChatroomState();
}

class _ChatroomState extends State<Chatroom> {
  @override

  Widget build(BuildContext context) {
    TextEditingController MyText = TextEditingController();
    RxString txt=''.obs;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            print("ss");
          }, icon: Icon(Icons.call),),
        ),
        body: Padding(
          padding: EdgeInsets.only(right: 0),
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: TextField(
                          onChanged: (x){
                            print(x);
                            txt.value=x;
                          },
                          controller: MyText,
                          textAlign:TextAlign.center,
                          decoration: InputDecoration(
                            hintText:"enter your massage...",
                             border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))
                             ),
                          ),
                        ),
                      ),
                      
                    ),
                    Obx(() {
                        return Container(
                            // color: Colors.deepPurple,
                            // BorderRadius.all(Radius.circular(100)),
                          padding: EdgeInsets.all(15),
                           decoration: BoxDecoration(
                               color: Colors.pink,
                               // borderRadius: BorderRadius.circular(100)
                             shape: BoxShape.circle
                          ),
                            child:Icon(Icons.send,size: 30,color: txt.value==''?Colors.black:Colors.blueAccent,)
                        );
                      }
                    ),

                  ],
                ),
              ),

            ],
          ),
            )
        ),
    );
  }
}