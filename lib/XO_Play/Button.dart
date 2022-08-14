import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String namebutton;
  Function ButtonClick;
  int? index;
  Button({required this.namebutton,required this.ButtonClick,required this.index});
   @override
  Widget build(BuildContext context) {
    return 
      Expanded(
        child:
        Container(
        color: Colors.black,
        margin: EdgeInsets.all(5),
           child: ElevatedButton(
           style: ElevatedButton.styleFrom(
             primary: Colors.black
           ),

            onPressed: (){
             ButtonClick(index);
            },

            child: Text("$namebutton",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: namebutton == "X" ?Colors.deepOrange:Colors.white),),

          ),
    ),

      );
  }
}
