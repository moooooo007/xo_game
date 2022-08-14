import 'package:flutter/material.dart';
import 'package:xo_game/XO_Play/login.dart';
import 'package:xo_game/XO_Play/PlayScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      initialRoute: "login",
      routes : {
          "PlayScreen" : (_)=> PlayScreen(),
          "login" : (_)=> login(),
    } ,

    );
  }
}
main(){
  runApp(MyApp());
}
