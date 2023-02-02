
import 'package:flutter/material.dart';

import 'HC_Home.dart';

void main(){
  runApp(MaterialApp(home: HC_Bottom(),debugShowCheckedModeBanner: false,
    // theme: ThemeData(primarySwatch: Colors.indigo),
  ));
}
class HC_Bottom extends StatefulWidget{

  @override
  State<HC_Bottom> createState() => _HC_BottomState();
}

class _HC_BottomState extends State<HC_Bottom> {
  int selectindex=0;

  List body= <Widget>[
    HC_Home(),
    Card(child:Padding(padding: EdgeInsets.all(50.0),child: Text("Home"),),color: Colors.indigo,),
    Card(child:Padding(padding: EdgeInsets.all(50.0),child: Text("Grid"),),color: Colors.indigo,),
    Card(child:Padding(padding: EdgeInsets.all(50.0),child: Text("Grid"),),color: Colors.indigo,),
    Card(child:Padding(padding: EdgeInsets.all(50.0),child: Text("Grid"),),color: Colors.indigo,),



  ];
  void onitemtapped(int index){
    setState(() {
      selectindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title:Text("BottomBar"),
      // ),
      bottomNavigationBar: Container(
        child:ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              topLeft: Radius.circular(50)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.black26,
            selectedItemColor: Color(0xff004d40),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wine_bar_outlined),
                label: "Club",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_rounded),
                label: "Booking",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favourite",
              ),
            ],
            currentIndex: selectindex,
            onTap: onitemtapped,
          ),
        ),
      ),
      body: Center(
        child: body.elementAt(selectindex),
        // child: Card(
        //   child: Padding(
        //     padding: const EdgeInsets.all(50.0),
        //     child: Text("Welcome"),
        //   ),),),
      ),);
  }
}