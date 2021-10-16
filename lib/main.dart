import 'package:budget_app/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      
      
      
      title: "Budget App",
      theme: ThemeData(
        primaryColor: Colors.green,
       
        
        
      ),
      
      home: 
      
      HomeScreen(),
    );
  }
}
