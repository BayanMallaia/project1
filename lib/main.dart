import 'package:flutter/material.dart';
import 'package:project1/screens/Welcom.dart';
import 'package:project1/screens/choose2.dart';
import 'package:project1/screens/send.dart';

 void main(){
   runApp (project1());
 }

 class project1 extends StatelessWidget {
    project1({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         scaffoldBackgroundColor: Colors.white,
       ),
         home: Welcome(),
       );
   }
 }
