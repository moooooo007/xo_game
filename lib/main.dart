import 'package:flutter/material.dart';
import 'package:xo_game/XO_Play/PlayScreen.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home:PlayScreen() ,
    );
  }
}
main(){
  runApp(MyApp());
}
