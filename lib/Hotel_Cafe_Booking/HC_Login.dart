import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'HC_Bottom.dart';
import 'HC_Login_Option.dart';
void main (){
  runApp(MaterialApp(home: login_now(),
  debugShowCheckedModeBanner: false,));
}

class login_now extends StatefulWidget {
  @override
  _login_nowState createState() => _login_nowState();
}

class _login_nowState extends State<login_now> {
  var formkey = GlobalKey<FormState>();
  bool showpass = true;
  bool viewenable=true;
  // bool _passwordvisibility=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loginpagee()));
        }, icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.black38,),),
      ),
      body: Container(
      child: Form(
      key:formkey,
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30,left: 10),
            child:  Text(
                  "Login Now",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Please login to continue",style: TextStyle(fontSize:20,color: Color(0xff004d40)),),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                child: Text("Remember me",
                    style: TextStyle(fontSize: 15, color: Colors.black54)),
                onPressed: () {},
              ),
              TextButton(
                child: Text("Forgot password?",
                    style: TextStyle(fontSize: 15, color: Colors.black)),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 70),
            child: SizedBox(
              width: 450,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
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
                            fontSize: 16.0);
                      }
                    },
                    child: Text("Login to my Account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff004d40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  "Login with",
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white10),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
                height: 40,
                width: 150,
                child: ElevatedButton(

                    onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) =>  HC_Bottom()));
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.white,
                    ),
                child: Image.asset("assets/images/facebook.png")),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white10),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
                height: 40,
                width: 150,
                child: ElevatedButton(onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) =>  HC_Bottom()));
                },
    style: ElevatedButton.styleFrom(
    backgroundColor:Colors.white,
                ), child: Image.asset("assets/images/google.png")
              ),
              ),],
          ),
          SizedBox(
            width: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Don't have an account?",style: TextStyle(fontSize: 15, color:Colors.black)),
              SizedBox(
                width: 5,
              ),
              TextButton(
                child: Text("Register now",
                    style: TextStyle(fontSize: 15, color:Color(0xff004d40))),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) =>  HC_Bottom()));
                },
              ),
            ],
          ),
        ],
      ),
    )));
  }
}