import 'package:flutter/material.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard({
    this.avatarColor, this.item, 
  });
  final Color avatarColor;
  final String item;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(                        
        children:[
          CircleAvatar(
            radius:15,
            backgroundColor: avatarColor
          ),
          SizedBox(width:10),
          Text(item, style: TextStyle(fontSize: 20),),
          Spacer(),
          Text("-150.52", style: TextStyle(fontSize: 20))
        ]
      ),
    );
  }
}

