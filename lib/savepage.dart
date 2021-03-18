import 'package:flutter/material.dart';
import 'package:new_design/widgets/app_bar.dart';
import 'package:new_design/widgets/percentage_list.dart';


class SavePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _SavePage();
      
    
  }
}

class _SavePage extends StatefulWidget {
  @override
  _SavePageState createState() => _SavePageState();
}

class _SavePageState extends State<_SavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      bottomNavigationBar: CustomAppBar(),


      body: SafeArea(
              
              child: Column(
                
                children: [
                  Container(
                    padding: EdgeInsets.all(25),
                    height: 190,
                    color: Colors.green[300],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        CircleAvatar(
                          radius:20,
                          backgroundColor: Colors.black,
                          child: Image(
                            image: AssetImage("images/head.png"), width:29, height:30),
                        ),
                        SizedBox(height:40),
                        Text("Apartment Savings", style: TextStyle(color: Colors.white)),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text("\$700.55",                           
                             style: TextStyle(color: Colors.white,
                             fontWeight: FontWeight.w700, fontSize: 32)),
                            Spacer(),
                            Text("of 50m", style: TextStyle(color: Colors.white))
                          ],
                        )
                      ]
                    ),
                   ),

                   Container(
                     padding: EdgeInsets.only(left:25, right:15),
                     height: 70,
                     color: Colors.white,
                     child: Row(
                       children: [
                         Text("Saving 5% of daily pay", style: TextStyle(fontSize: 17),),
                         Spacer(),
                          Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                       ],)
                   ),

                    SizedBox(height:30),
                   Container(
                     margin: EdgeInsets.only(left:25, right:15),
                     child: Row(                     
                       children: [
                         Text("Activity", style: TextStyle(fontSize: 20),),
                         Spacer(),
                         Text("View All"),
                         Icon(Icons.keyboard_arrow_right, color: Colors.grey, size: 20,)
                       ],
                     ),
                   ),

                   Container(                    
                     margin: EdgeInsets.all(25),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.white
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         PercentageList(
                           percentage: "5% of \$2500",
                           value: "+125.00",
                         ),
                         Divider(height: 30,),
                         PercentageList(
                           percentage: "5% of \$4500",
                           value: "+225.00",
                         ), 
                         Divider(height: 30,),
                         PercentageList(
                           percentage: "5% of \$1500",
                           value: "+75.00",
                         ),
                         Divider(height: 30,),
                         PercentageList(
                           percentage: "5% of \$5500",
                           value: "+275.00",
                         ), 
                       ],
                      ),
                   )
                ],
              )
        ),
    );
    
  }
}

