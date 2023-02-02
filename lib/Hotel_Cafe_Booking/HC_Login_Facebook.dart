import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'HC_Bottom.dart';
void main(){
  runApp(MaterialApp(home: Facebook_Login(),
  debugShowCheckedModeBanner: false,));
}

class Facebook_Login extends StatefulWidget{
  @override
  State<Facebook_Login> createState() => _Facebook_LoginState();
}

class _Facebook_LoginState extends State<Facebook_Login> {
  Color _iconColor = Colors.black26;
  bool viewenable=true;
  // bool _passwordvisibility=false;
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        body: Container(
        child: Form(
          key:formkey,
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Center(
                    child: Text(
                      "Login with Facebook",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 50),
                child: TextFormField(   //we can use validator property
                  decoration: const InputDecoration(
                      // prefixIcon: Icon(Icons.account_circle),
                      label:Text( "E-mail ID or Mobile Number"),
                      // hintText: "Username must be your email address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      )),
                  validator:(text) {
                    if (text!.isEmpty || !(text.contains('@')) || text == null) {
                      return 'Enter a valid email';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  obscuringCharacter: "*",
                  obscureText: viewenable,
                  decoration:   InputDecoration(
                    // prefixIcon: Icon(Icons.password),
                    // suffixIcon: Icon(Icons.visibility),
                    suffixIcon:IconButton(
                        onPressed:() {
                          setState(() {
                            if (viewenable) {
                              viewenable = false;
                            } else {
                              viewenable = true;
                            }
                          });
                        },
                        icon: Icon(viewenable== true? Icons.visibility_off: Icons.visibility)),
                    // prefixIcon: const Icon(Icons.password),

                    label: Text("Password"),

                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),),


                  validator:(password){
                    if(password==null || password.length<6 || password.isEmpty){
                      return 'Password  length should greater than 6/ should not be null';
                    } else  {
                      return null;
                    }
                  },
                  textInputAction: TextInputAction.done,
                ),
              ),
              Row(
                children: [
                  IconButton(onPressed: (){
                    setState(() {
                      _iconColor = Colors.blueAccent;
                    });
                  }, icon: Icon(Icons.check_circle_outline)),
                  Text("Remember Me"),
                  Padding(
                    padding: const EdgeInsets.only(left:100),
                    child: TextButton(onPressed: (){}, child: Text("Forgot Password ?",style: TextStyle(color:Color(0xff004d40) ),)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 10),
                child: ElevatedButton(onPressed: (){
                  final valid =formkey.currentState!.validate();
                  if (valid) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  HC_Bottom()));
                  }else {
                    Fluttertoast.showToast(
                        msg: "Invalid username or incorrect password",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        // timeInSecForIosWeb: 1,
                        backgroundColor:Color(0xff004d40),
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }
                },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xff004d40)),
                    ),child: Text("Login with Facebook")),
              ),
            ],
          ),),
    ),
      );
  }
}
