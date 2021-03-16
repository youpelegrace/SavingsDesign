import 'package:flutter/material.dart';
import 'package:new_design/savepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home:  new NewDesign(),
    );
  }
}

class NewDesign extends StatefulWidget {
  @override
  NewDesignState createState() => NewDesignState();
}

class NewDesignState extends State<NewDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      
      
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.credit_card, size: 30,),
                    SizedBox(height:5),
                    Text("Spend")
                  ],),

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
          
        
      ),

      body: SafeArea(
        child: ListView(
          children: [
            Container(
                  child: Column(
            
            children: [
              Container(
                padding: EdgeInsets.all(25),
                color: Colors.green[300],
                height: 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                             CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.black
                            ),

                              Spacer(),

                             Container(
                            padding: EdgeInsets.all(9),
                           height:40,
                           width:171,                            
                             decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(5)
                           ),
                           child: Text("Payday in a week", style: TextStyle(fontSize: 20, color: Colors.green[300]),),
                            ),
                           ],
                          ),

                          SizedBox(height: 40,),
  
                          Text("Total balance to spend", 
                            style: TextStyle(color: Colors.white)),
                            SizedBox(height:5), 
                          Text("\$5785.55",
                            style: TextStyle(color: Colors.white,
                             fontWeight: FontWeight.w700, fontSize: 32))
                  ],
                )
              ),

              Container(
                
                padding: EdgeInsets.all(25),
                child: Row(
                  children: [
                    Text("Planning Ahead",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text("-\$540.52",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Icon(Icons.keyboard_arrow_right, color: Colors.grey)
                  ],)),

                   Container(

                     height: 150,
                     width: MediaQuery.of(context).size.width,
                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: [
                       Row(
                         
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: 25),
                             padding: EdgeInsets.all(15),
                             height:120,
                             width: 120,
                             decoration:BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(20)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.lightBlueAccent
                                    ),
                                    SizedBox(height:13),
                                    Text("-150.52", 
                                    style: TextStyle(color: Colors.green[300], fontWeight: FontWeight.w900,fontSize: 18)),
                                    SizedBox(height:5),
                                    Text("In a 2 days")
                                  ],
                                ),
                           ),
                            
                            Container(
                             margin: EdgeInsets.only(left: 25),
                             padding: EdgeInsets.all(15),
                             height:120,
                             width: 120,
                             decoration:BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(20)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.greenAccent
                                    ),
                                    SizedBox(height:13),
                                    Text("-250.52", 
                                    style: TextStyle(color: Colors.green[300], fontWeight: FontWeight.w900,fontSize: 18)),
                                    SizedBox(height:5),
                                    Text("In a 2 days")
                                  ],
                                ),
                           ),

                           Container(
                             margin: EdgeInsets.only(left: 25),
                             padding: EdgeInsets.all(15),
                             height:120,
                             width: 120,
                             decoration:BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(20)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.red
                                    ),
                                    SizedBox(height:13),
                                    Text("-139.48", 
                                    style: TextStyle(color: Colors.green[300], fontWeight: FontWeight.w900,fontSize: 18)),
                                    SizedBox(height:5),
                                    Text("In a 2 days")
                                  ],
                                ),
                           )
                         ],)

                       ],),
                   ),

               Divider(height: 25,),
 
              Container(
                
                padding: EdgeInsets.all(25),
                child: Row(
                  children: [
                    Text("Last Month Expense",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text("-\$1800.50",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                  ],),),   

              Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text("22", style: TextStyle(color: Colors.grey)),
                            SizedBox(height:5),
                            Text("MAR", style: TextStyle(color: Colors.grey))
                          ],),                        
                        SizedBox(width:30),
                        Column(
                          children: [
                            Text("23", style: TextStyle(color: Colors.grey)),
                            SizedBox(height:5),
                            Text("MAR", style: TextStyle(color: Colors.grey))
                          ],),
                        SizedBox(width:30),
                        Column(
                          children: [
                            Text("24", style: TextStyle(color: Colors.grey)),
                            SizedBox(height:5),
                            Text("MAR", style: TextStyle(color: Colors.grey))
                          ],),
                        SizedBox(width:30),
                        Column(
                          children: [
                            Text("25", style: TextStyle(color: Colors.grey)),
                            SizedBox(height:5),
                            Text("MAR", style: TextStyle(color: Colors.grey))
                          ],),
                        SizedBox(width:30),
                        Column(
                          children: [
                            Text("26", style: TextStyle(color: Colors.grey)),
                            SizedBox(height:5),
                            Text("MAR", style: TextStyle(color: Colors.grey)),
                            SizedBox(height:5),
                            CircleAvatar(
                              radius: 2,
                              backgroundColor: Colors.grey,
                            )
                          ],),
                        SizedBox(width:30),
                        Column(
                          children: [
                            Text("27", style: TextStyle(color: Colors.grey),),
                            SizedBox(height:5),
                            Text("MAR", style: TextStyle(color: Colors.grey))
                          ],),
                        SizedBox(width:30),
                        Column(
                          children: [
                            Text("28"),
                            SizedBox(height:5),
                            Text("MAR"),
                            SizedBox(height:5),
                            CircleAvatar(
                              radius:2,
                              backgroundColor: Colors.green[300]
                            )
                          ],),
                        SizedBox(width:30),
                        Column(
                          children: [
                            Text("29", style: TextStyle(color: Colors.grey)),
                            SizedBox(height:5),
                            Text("MAR", style: TextStyle(color: Colors.grey))
                          ],),
                        SizedBox(width:30),
                        Column(
                          children: [
                            Text("30", style: TextStyle(color: Colors.grey)),
                            SizedBox(height:5),
                            Text("MAR", style: TextStyle(color: Colors.grey)),
                            SizedBox(height:5),
                            CircleAvatar(
                              radius: 2,
                              backgroundColor: Colors.grey,
                            )
                          ],),
                        SizedBox(width:30),
                        Column(
                          children: [
                            Text("31", style: TextStyle(color: Colors.grey)),
                            SizedBox(height:5),
                            Text("MAR", style: TextStyle(color: Colors.grey)),
                            SizedBox(height:5),
                            CircleAvatar(
                              radius:2,
                              backgroundColor: Colors.grey,
                            )
                          ],),
                      ],
                    )
                  ],
                  ),
                ),

              Container(
                
                margin: EdgeInsets.only(left: 25, right: 25),
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        
                        children:[
                          CircleAvatar(
                            radius:15,
                            backgroundColor: Colors.indigo[600]
                          ),
                          SizedBox(width:10),
                          Text("Craftwork", style: TextStyle(fontSize: 20),),
                          Spacer(),
                          Text("-150.52", style: TextStyle(fontSize: 20))
                        ]
                      ),
                    ),
                    Divider(height:30),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius:15,
                            backgroundColor: Colors.red[600]
                          ),
                          SizedBox(width:10),
                          Text("Focus Lab", style: TextStyle(fontSize: 20),),
                          Spacer(),
                          Text("-150.52", style: TextStyle(fontSize: 20))
                        ],),
                    ),
                      Divider(height:30),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                        children: [
                          CircleAvatar(
                            radius:15,
                            backgroundColor: Colors.red[600]
                          ),
                          SizedBox(width:10),
                          Text("Focus Lab", style: TextStyle(fontSize: 20),),
                          Spacer(),
                          Text("-150.52", style: TextStyle(fontSize: 20))
                        ],),
                      ),
                      Divider(height:30),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                        children: [
                          CircleAvatar(
                            radius:15,
                            backgroundColor: Colors.red[600]
                          ),
                          SizedBox(width:10),
                          Text("Focus Lab", style: TextStyle(fontSize: 20),),
                          Spacer(),
                          Text("-150.52", style: TextStyle(fontSize: 20))
                        ],),
                      ),
                      Divider(height:30),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                        children: [
                          CircleAvatar(
                            radius:15,
                            backgroundColor: Colors.red[600]
                          ),
                          SizedBox(width:10),
                          Text("Focus Lab", style: TextStyle(fontSize: 20),),
                          Spacer(),
                          Text("-150.52", style: TextStyle(fontSize: 20))
                        ],),
                      ),
                      Divider(height:30),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                        children: [
                          CircleAvatar(
                            radius:15,
                            backgroundColor: Colors.red[600]
                          ),
                          SizedBox(width:10),
                          Text("Focus Lab", style: TextStyle(fontSize: 20),),
                          Spacer(),
                          Text("-150.52", style: TextStyle(fontSize: 20))
                        ],),
                      ),
                    ],
                )                
              ),

                    
            ]),
         )
        ]
       )
      )
    );
  }
}