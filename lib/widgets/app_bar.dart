import 'package:flutter/material.dart';
import 'package:new_design/home.dart';
import 'package:new_design/savepage.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            
            
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> NewDesign()));
                   },
                child: Column(
                  children: [
                    Icon(Icons.credit_card, size: 30,),
                    SizedBox(height:5),
                    Text("Spend")
                  ],),
              ),

                 GestureDetector(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> SavePage()));
                   },
               child: Column(
                children: [
                    Icon(Icons.favorite_border_outlined, size: 30,),
                    SizedBox(height:5),
                    Text("Save")
                ],),
                 ),

                 Column(
                children: [
                  Icon(Icons.today, size: 30,),
                  SizedBox(height:5),
                  Text("Schedule")
                ],),
               
                  Column(
                children: [
                  Icon(Icons.menu, size: 30,),
                  SizedBox(height:5),
                  Text("Menu")
                ],),
               
               FloatingActionButton(onPressed: (){},
                  child: Icon(Icons.add, color: Colors.white,),
                   backgroundColor: Colors.green[300],
    
              ),
               
               
            ],),
        ),
      ),
        
      
    );
  }
}