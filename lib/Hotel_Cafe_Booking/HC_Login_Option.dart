import 'package:flutter/material.dart';


import 'HC_Login.dart';
import 'HC_Login_Facebook.dart';
void main()
{
  runApp(MaterialApp(home: loginpagee(),debugShowCheckedModeBanner: false,));
}


class loginpagee extends StatefulWidget {
  @override
  State<loginpagee> createState() => _loginpageeState();
}

class _loginpageeState extends State<loginpagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title:  Text(
            "Login For Best Services",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
        centerTitle: true,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/mainscreen1-removebg-preview.png"),
          Padding(
            padding:
            const EdgeInsets.only(left: 15, right: 15, top: 45, bottom: 15),
            child: SizedBox(
              width: 450,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login_now()));
                },
                child: Text(
                  "Login now",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white54,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),

              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
            child: SizedBox(
              width: 450,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  Facebook_Login()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.facebook_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text("Continue with Facebook",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: (Color(0xff004d40)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
            ),
          ),
          TextButton(
            child: Text("Signup with Email",
                style: TextStyle(fontSize: 15, color: Colors.black45)),
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => sign_up_page()));
            },
          ),
        ],
      ),
    );
  }
}