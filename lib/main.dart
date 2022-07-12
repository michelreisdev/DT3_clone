import 'package:dt3/screem/MyHomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData( 
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0
        )
      ),
      home:  SafeArea(child:  MyHomePage()),
    );
  }
}
