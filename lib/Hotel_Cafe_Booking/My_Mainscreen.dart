// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:my_first_project/Project/My_Login.dart';
// import 'package:my_first_project/Project/My_Register.dart';
//
// void main() {
//   runApp(MaterialApp(
//       home: My_MainScreen(),
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.blueGrey)));
// }
// class My_MainScreen extends StatefulWidget {
//   @override
//   State<My_MainScreen> createState() => My_MainScreenState();
// }
//
// class My_MainScreenState extends State<My_MainScreen> {
//   bool repeat=true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("WELCOME",style: TextStyle(
//             fontSize:30,fontWeight: FontWeight.w100,fontStyle: FontStyle.italic),),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // const Padding(  //padding used for the gap between column
//             //   padding: EdgeInsets.only(top: 20,bottom: 10),
//             //   child:Center(
//             //     child: Text("Greetings.....",
//             //       style: TextStyle(fontSize:25, fontWeight: FontWeight.bold),
//             //     ),
//             //   ),
//             // ),
//            Container(
//              width:double.infinity,
//                height:250,
//                child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_MSznfvMmqi.json')),
//               // height:250,width:500,
//
//             Padding(
//               padding: const EdgeInsets.only(left:20,right: 20,bottom: 10),
//               child: Container(width: double.infinity,height: 25,
//                 child: ElevatedButton(
//                   onPressed: ()
//                   {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => Login1() ));
//                   },
//                   child: Text("Login"),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left:20,right: 20),
//               child: Container(width: double.infinity,
//                 height:25,
//                 child: ElevatedButton(
//                   onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>SignUp() ));},
//                   child: Text("Sign Up"),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
