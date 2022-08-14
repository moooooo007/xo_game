import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xo_game/XO_Play/Button.dart';
import 'package:xo_game/XO_Play/resetbutton.dart';
class PlayScreen extends StatefulWidget {
    @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  List <String> symbol = ["","","","","","","","",""];
  int player1 = 0;
  int player2 = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
       appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("X_O Play",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: (
        Column(
          children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 40,
            margin: EdgeInsets.all(5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black,
            borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

              Text("Player 01",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white,),textAlign: TextAlign.center,),
              Text("$player1",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.deepOrange),textAlign: TextAlign.center,),
              Text("/ Player 02",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),
              Text("$player2",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.deepOrange),textAlign: TextAlign.center,)

            ],
      ),
          ),
        ),
        Expanded(
          flex: 1,
              child: Container(
                height: 40,
                margin: EdgeInsets.all(5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                   resetbutton(buttonname:"Try Agin",Buttonreset:resetboard),
                   resetbutton(buttonname:"Reset",Buttonreset:reset),
                  ],
                ),
              ),
            ),
        Expanded(
              flex: 2,
              child: Container(
                height: 40,
                margin: EdgeInsets.all(5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Button(namebutton:symbol[0],ButtonClick:onclick,index: 0,),
                    Button(namebutton:symbol[1],ButtonClick:onclick,index: 1),
                    Button(namebutton:symbol[2],ButtonClick:onclick,index: 2),
                  ],
                ),
              ),
            ),
        Expanded(
          flex: 2,
              child: Container(
                height: 40,
                margin: EdgeInsets.all(5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Button(namebutton:symbol[3],ButtonClick:onclick,index: 3),
                    Button(namebutton:symbol[4],ButtonClick:onclick,index: 4),
                    Button(namebutton:symbol[5],ButtonClick:onclick,index: 5),

                  ],
                ),
              ),
            ),
        Expanded(
          flex: 2,
              child: Container(
                height: 40,
                margin: EdgeInsets.all(5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Button(namebutton:symbol[6],ButtonClick:onclick,index: 6),
                    Button(namebutton:symbol[7],ButtonClick:onclick,index: 7),
                    Button(namebutton:symbol[8],ButtonClick:onclick,index: 8),
                  ],
                ),
              ),
            ),
          ],
        )
        ),
      ),
    );
  }

  int counter = 0;
  onclick (int index){
    if(symbol[index].isNotEmpty) return;
    String butoonsymbol = counter % 2 == 0 ? "O" : "X";
    symbol[index]=butoonsymbol;
    counter++;
    setState(() {
    });
    if (chickwinner(butoonsymbol)){
      if(butoonsymbol=="O"){
        player1++;

      }
      else {
        player2++;

      }resetboard();
    }

   }
   void reset(){
     symbol = ["","","","","","","","",""];
     counter=0;
     player1=0;
     player2=0;
     setState(() {
     });
   }

  bool chickwinner(String butoonsymbol) {
    for (int i=0 ; i < 9; i = i+3){
  if(
  symbol[i]==butoonsymbol &&symbol[i+1]==butoonsymbol && symbol[i+2]==butoonsymbol
  )
  {
    return true;
  }
     }
    for(int i =0 ; i <3;i++){
      if(
      symbol[i]==butoonsymbol &&symbol[i+3]==butoonsymbol && symbol[i+6]==butoonsymbol
      )
      {
        return true;
      }
    }
    if(
    symbol[2]==butoonsymbol &&symbol[4]==butoonsymbol && symbol[6]==butoonsymbol
    )
    {
      return true;
    } if(
    symbol[0]==butoonsymbol &&symbol[4]==butoonsymbol && symbol[8]==butoonsymbol
    )
    {
      return true;
    }
   return false;
  }

  void resetboard() {
    symbol = ["","","","","","","","",""];
    counter=0;
    setState(() {
    });
  }
}
