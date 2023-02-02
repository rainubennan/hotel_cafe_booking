import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: HC_Home(),
    debugShowCheckedModeBanner: false,));
}

class HC_Home extends StatefulWidget{
  @override
  State<HC_Home> createState() => _HC_HomeState();
}

class _HC_HomeState extends State<HC_Home> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      elevation:0,

      title:Text("Home",style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),) ,
      actions: [
        SizedBox(
          width: 50,
          height: 50,
          child: ElevatedButton(onPressed: () {  }, child:Image(image:NetworkImage('assets/images/profile1.jpg')),),
        )
      ],
    ),
    body:Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top:10,left: 5),
          child: Text("Hello Ann Zara",style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.w500
          ),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0,left: 5),
          child: Text('Welcome Here,Choose Your Interest',
            style: TextStyle(
              color: Color(0xff004d40),
              fontSize:15,fontWeight: FontWeight.w400
            ),),
        ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color:Color(0xff004d40),
          ),),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                  child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search "
                ),)),
              Expanded(child: SizedBox(height:50,
                child: ElevatedButton(onPressed: () {  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff004d40)),
                  ),child: Text('Submit'),),
              ))
            ],
          ),
        ),
      ),

        Padding(
          padding: const EdgeInsets.only(left: 8.0,top: 10),
          child: Text("Services",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
      ],
    ),

  );
  }
}