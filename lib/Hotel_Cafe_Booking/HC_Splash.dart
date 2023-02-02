import 'dart:async';
import 'package:flutter/material.dart';

import 'HC_Welcome.dart';
void main(){
  runApp(MaterialApp(home: SplashScreen(),debugShowCheckedModeBanner: false,));
}
class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds:3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Welcome() ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold( backgroundColor:Color(0xff004d40),
      body: Container(
        ///  set background color
        // color: Colors.blue,
        /// set background image
        // decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //         begin:Alignment.topCenter ,
        //         // end: Alignment.bottomCenter,
        //         colors: [
        //           Colors.blue,
        //           Colors.purple,
        //           Colors.green])
        // image: DecorationImage(
        //     fit: BoxFit.fill,
        //     image:NetworkImage(
        //         "https://media.istockphoto.com/id/1287148666/vector/pastel-abstract-shapes-background.jpg?s=612x612&w=0&k=20&c=GJ9SIGnm8LW1ToQFlBchCBy-TZbGxF178dmTgYePM6o="
        //     )
        // )
        // ),
          child:Center(
            child:
            Image.asset("assets/images/HC_LOGO-removebg-preview.png"),)
        // height:75,width:75),
      )
      ,


    );
  }
}