import 'package:flutter/material.dart';
import 'package:my_prayekt/screens/glavni_page.dart';
import 'package:my_prayekt/screens/my_hom_page.dart';
import 'package:my_prayekt/screens/my_home_page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: GlavniPage(),
    );
  }
}