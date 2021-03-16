import 'package:flutter/material.dart';
import 'package:new_design/main.dart';

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

      bottomNavigationBar: BottomAppBar(
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
                  } ,
                  child: Column(
                    children: [
                      Icon(Icons.credit_card, size: 30,),
                      SizedBox(height:5),
                      Text('Spend')
                    ],),
                ),
                Column(
                  children: [
                    Icon(Icons.favorite_border_outlined, size: 30,),
                    SizedBox(height:5),
                    Text('Save')
                  ],),
                Column(
                  children: [
                    Icon(Icons.today, size: 30,),
                    SizedBox(height:5),
                    Text('Schedule')
                  ],),
                Column(
                  children: [
                    Icon(Icons.menu, size: 30,),
                    SizedBox(height:5),
                    Text('Menu')
                  ],),
  
                FloatingActionButton(onPressed: (){},
                  child: Icon(Icons.add, color: Colors.white),
                  backgroundColor: Colors.green[300],
                  
                )
  

            ],),
          ),),

      ),


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
                         Padding(
                           padding: const EdgeInsets.all(15),
                           child: Row(
                             children: [
                               CircleAvatar(
                                 radius:15,
                                 backgroundColor:Colors.purple[100]
                               ),
                               SizedBox(width:10),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                 Text("5% of \$2500", style: TextStyle(fontSize: 20)),
                                 Text("Dec 25", style: TextStyle(fontSize: 20, color: Colors.grey))
                               ],),
                               Spacer(),
                               Text("+125.00", style: TextStyle(fontSize: 20))
                             ],
                           ),
                         ),
                         Divider(height: 30,),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                             children: [
                               CircleAvatar(
                                 radius:15,
                                 backgroundColor:Colors.purple[100]
                               ),
                               SizedBox(width:10),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                 Text("5% of \$4500", style: TextStyle(fontSize: 20)),
                                 Text("Dec 25", style: TextStyle(fontSize: 20, color: Colors.grey))
                               ],),
                               Spacer(),
                               Text("+225.00", style: TextStyle(fontSize: 20))
                             ],
                         ),
                          ),
                         Divider(height: 30,),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                             children: [
                               CircleAvatar(
                                 radius:15,
                                 backgroundColor:Colors.purple[100]
                               ),
                               SizedBox(width:10),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                 Text("5% of \$1500", style: TextStyle(fontSize: 20)),
                                 Text("Dec 25", style: TextStyle(fontSize: 20, color: Colors.grey))
                               ],),
                               Spacer(),
                               Text("+75.00", style: TextStyle(fontSize: 20))
                             ],
                         ),
                          ),
                         Divider(height: 30,),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                             children: [
                               CircleAvatar(
                                 radius:15,
                                 backgroundColor:Colors.purple[100]
                               ),
                               SizedBox(width:10),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                 Text("5% of \$5500", style: TextStyle(fontSize: 20)),
                                 Text("Dec 25", style: TextStyle(fontSize: 20, color: Colors.grey))
                               ],),
                               Spacer(),
                               Text("+275.00", style: TextStyle(fontSize: 20))
                             ],
                         ),
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