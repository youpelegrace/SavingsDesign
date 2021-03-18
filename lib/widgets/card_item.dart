import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    this.avatarColor, this.balance
  });
  final Color avatarColor;
  final String balance;

  @override
  Widget build(BuildContext context) {
    return Container(
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
               backgroundColor: avatarColor
             ),
             SizedBox(height:13),
             Text(balance, 
             style: TextStyle(color: Colors.green[300], fontWeight: FontWeight.w900,fontSize: 18)),
             SizedBox(height:5),
             Text("In a 2 days")
           ],
         ),
    );
  }
}
