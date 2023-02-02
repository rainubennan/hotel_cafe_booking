import 'package:flutter/material.dart';

import 'HC_Login_Option.dart';
void main(){
  runApp(MaterialApp(home: Welcome(),debugShowCheckedModeBanner: false,));
}

class Welcome extends StatefulWidget{
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:100),
            child: Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                  image: DecorationImage(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiovnTWS0QKx1BhZvOT8IeF_ZDYENxwC-s7P7mK8Pg2Cq9pWE30G5mW-twOk0YmCBsSzo&usqp=CAU',
                  ),
                      fit: BoxFit.fill
                ),
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:60),
            child: Text("Welcome",style: TextStyle(
              fontSize:30,fontWeight: FontWeight.bold),),
          ),

          Padding(
            padding: const EdgeInsets.only(top:20),
            child: Text("We will help you to find best Cafe near you & \n best Hotel rooms for your trip"),
          ),

          Padding(
            padding: const EdgeInsets.only(top:60),
            child: SizedBox(
              width: 300,
                child: ElevatedButton(onPressed: (){ Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> loginpagee() ));},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xff004d40)),
                    ),
                    child: Text('Next'))),
          )
        ],
      ),
    );
  }
}