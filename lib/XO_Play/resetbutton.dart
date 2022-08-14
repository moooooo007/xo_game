import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class resetbutton extends StatelessWidget {
  String buttonname;
  Function Buttonreset;
   resetbutton({required this.buttonname,required this.Buttonreset});
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
              Buttonreset();
            },

            child: Text("$buttonname",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.deepOrange),),

          ),
        ),

      );
  }
}
