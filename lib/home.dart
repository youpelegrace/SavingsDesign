import 'package:flutter/material.dart';
import 'package:new_design/widgets/app_bar.dart';
import 'package:new_design/widgets/card_item.dart';
import 'package:new_design/widgets/company_card.dart';
import 'package:new_design/widgets/date_items.dart';

import 'widgets/section_header.dart';

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
      
      
      bottomNavigationBar: CustomAppBar(),

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
                              backgroundColor: Colors.black,
                              child: Image(
                            image: AssetImage("images/head.png", ), width:29, height:30)
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

              SectionHeader(header: "Planning Ahead",
              moneyValue: "-\$540.52",
              ),

                   Container(
                     height: 150,
                     width: MediaQuery.of(context).size.width, 
                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: [
                       Row(
                         
                         children: [
                           CardItem(avatarColor: Colors.blueAccent,
                           balance: "-150.52",
                           ),
                            
                           CardItem(avatarColor: Colors.lightGreen,
                           balance: "-250.52",
                           ),

                           CardItem(avatarColor: Colors.redAccent,
                           balance: "-129.52",
                           )
                         ],
                         )
                       ],
                       ),
                   ),

               Divider(height: 25,),
 
              SectionHeader(header: "Last Month Expense",
                moneyValue: "-\$1800.50",
              ),

              Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DateItems(day: "22",
                         month: "MAR",
                         avatar: Container(),
                        ),                        
                        SizedBox(width:30),
                        DateItems(day: "23",
                         month: "MAR",
                         avatar: Container(),
                        ),
                        SizedBox(width:30),
                        DateItems(day: "24",
                         month: "MAR",
                         avatar: Container(),
                        ),
                        SizedBox(width:30),
                        DateItems(day: "25",
                         month: "MAR",
                         avatar: Container(),
                        ),
                        SizedBox(width:30),
                        DateItems(day: "26",
                         month: "MAR",
                         avatar: CircleAvatar(
                           radius: 2,
                           backgroundColor: Colors.grey
                         ),
                        ),
                        SizedBox(width:30),
                        DateItems(day: "27",
                         month: "MAR",
                         avatar: Container(),
                        ),
                        SizedBox(width:30),
                        DateItems(day: "28",
                         month: "MAR",
                         avatar: CircleAvatar(
                           radius:2,
                           backgroundColor:Colors.green[300]
                         ),
                        ),
                        SizedBox(width:30),
                        DateItems(day: "29",
                         month: "MAR",
                         avatar: Container(),
                        ),
                        SizedBox(width:30),
                        DateItems(day: "30",
                         month: "MAR",
                         avatar: CircleAvatar(
                           radius:2,
                           backgroundColor: Colors.grey
                         ),
                        ),
                        SizedBox(width:30),
                        DateItems(day: "31",
                         month: "MAR",                        
                         avatar: CircleAvatar(
                           radius:2,
                           backgroundColor: Colors.grey,
                         ),
                        ),
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
                      CompanyCard(
                      avatarColor: Colors.blueAccent,
                      item: "Craftwork",                      
                    ),
                      Divider(height:30),
                      CompanyCard(
                      avatarColor: Colors.red,
                      item: "Focus Lab",                    
                    ),
                      Divider(height:30),
                      CompanyCard(
                      avatarColor: Colors.red,
                      item: "Focus Lab",                    
                    ),
                      Divider(height:30),
                      CompanyCard(
                      avatarColor: Colors.red,
                      item: "Focus Lab",                    
                    ),
                      Divider(height:30),
                      CompanyCard(
                      avatarColor: Colors.red,
                      item: "Focus Lab",                    
                    ),                      
                      Divider(height:30),
                      CompanyCard(
                      avatarColor: Colors.red,
                      item: "Focus Lab",                    
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

