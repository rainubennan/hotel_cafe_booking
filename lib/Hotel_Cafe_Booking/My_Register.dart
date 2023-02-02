// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// void main(){
//   runApp(MaterialApp(home: SignUp(),debugShowCheckedModeBanner: false,));
// }
//
// class SignUp extends StatefulWidget{
//   @override
//   State<SignUp> createState() => _SignUpState();
// }
//
// class _SignUpState extends State<SignUp> {
//   bool viewenable= true;
//   var formkey = GlobalKey<FormState>();
//
//   TextEditingController pass = TextEditingController();
//   TextEditingController cpass = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Register Here!!",
//             style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100)),
//       ),
//       body: Form(
//         key: formkey,
//         child: ListView(
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(top: 30),
//               child: Center(
//                   child: Text(
//                     "Sign Up",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
//                   )),
//             ),
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: TextFormField(
//
//                 //we can use validator property
//                 decoration: InputDecoration(
//
//                     hintText: "Username must be a valid email id",
//                     labelText: "Username",
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
//                 validator: (email) {
//                   if (email!.isEmpty || !email.contains('@')) {
//                     return 'Enter a valid email';
//                   } else {
//                     return null;
//                   }
//                 },
//                 textInputAction: TextInputAction.next,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: TextFormField(
//                 controller: pass,
//                 obscuringCharacter: "*",
//                 obscureText: viewenable,
//                 decoration: const InputDecoration(
//                     labelText: "Creat Password",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                     )),
//                 validator: (password) {
//                   if (password!.isEmpty || password.length < 6) {
//                     return 'Password  length should greater than 6/ should not be null';
//                   } else {
//                     return null;
//                   }
//                 },
//                 textInputAction: TextInputAction.next,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: TextFormField(
//                 controller: cpass,
//                 obscuringCharacter: "*",
//                 obscureText: viewenable,
//                 decoration: const InputDecoration(
//                     labelText: "Re-enter Password",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                     )),
//                 validator: (password) {
//                   if (password!.isEmpty ||
//                       password.length < 6 ||
//                       pass.text == cpass.text) {
//                     return 'Password should be same';
//                   } else {
//                     return null;
//                   }
//                 },
//                 textInputAction: TextInputAction.done,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 40.0, right: 40),
//               child: ElevatedButton(
//                   onPressed: () {
//                     final valid = formkey.currentState!.validate();
//                     if (valid) {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: const Text('Registration successful!'),
//                           action: SnackBarAction(
//                             label: 'Undo',
//                             onPressed: () {
//                               // Code to execute.
//                             },
//                           ),
//                         ),
//                       );
//                     } else {
//                       Fluttertoast.showToast(
//                           msg: "Invalid username/ password",
//                           toastLength: Toast.LENGTH_SHORT,
//                           gravity: ToastGravity.CENTER,
//                           // timeInSecForIosWeb: 1,
//                           backgroundColor: Colors.red,
//                           textColor: Colors.white,
//                           fontSize: 16.0);
//                     }
//                   },
//                   child: Text("Register Here!!")),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }