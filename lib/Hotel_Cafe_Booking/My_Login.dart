import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main(){
  runApp(MaterialApp(home: Login1(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.teal),));
}

class Login1 extends StatefulWidget{
  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  bool viewenable=true;
  // bool _passwordvisibility=false;
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        // Image.network("https://banner2.cleanpng.com/20180426/lwq/kisspng-computer-icons-login-management-user-5ae155f3386149.6695613615247170432309.jpg")
        const Text("Login Page"),
      ),
      body: Form(
        key:formkey,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Center(
                  child: Text(
                    "Login Page",
                    style: TextStyle(fontSize: 40),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(   //we can use validator property
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    label:Text( "Username"),
                    hintText: "Username must be your email address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(80)),
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
                  prefixIcon: const Icon(Icons.password),

                  label: Text("Password"),

                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
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
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 10),
              child: ElevatedButton(onPressed: (){
                final valid =formkey.currentState!.validate();
                if (valid) {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => MainScreen()));
                }else {
                  Fluttertoast.showToast(
                      msg: "Invalid username or incorrect password",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      // timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                }
              }, child: Text("Login")),
            ),
          ],
        ),),
    );
  }
}