import 'package:flutter/material.dart';
import 'package:xo_game/XO_Play/PlayScreen.dart';

class login extends StatelessWidget {
  static const RouteName = "login";
 String players1="";
 String players2="";

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Enter your Name ?",
          style: TextStyle(
              color: Colors.orangeAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
            body: Column(
            children: [
            Padding(
            padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged:(text){
                  players1 = text;
                } ,

                decoration: InputDecoration(
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.looks_one_rounded),
                    labelText: ("Player1"),
                    labelStyle: TextStyle(
                        backgroundColor: Colors.white,
                        fontSize: 20,
                        color: Colors.blue)),
              ),
            ),
          ),
        ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged:(text){
                        players2 = text;
                      } ,

                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          suffixIcon: Icon(Icons.looks_two_rounded),
                          labelText: ("Player2"),
                          labelStyle: TextStyle(
                              backgroundColor: Colors.white,
                              fontSize: 20,
                              color: Colors.blue)),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: Colors.deepOrange,
                      minimumSize: const Size(330, 70),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, "PlayScreen",
                          arguments:playarscreengs(player1name: players1, player2name: players2) );
                    },
                    child: Text("Start",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),

          ],
        ),
        )
      );
  }
}


