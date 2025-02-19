import 'package:flutter/material.dart';
import 'package:medibank/screen/profile.dart';
import 'package:medibank/screen/search.dart';
import 'package:medibank/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        useMaterial3: true,
        
      ),
      home:   ProfilePage()
      ,
      
      
      
    );
  }
}


