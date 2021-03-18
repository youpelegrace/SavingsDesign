import 'package:flutter/material.dart';

class PercentageList extends StatelessWidget {
  const PercentageList({
    this.percentage, this.value
  });
  final String percentage;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            Text(percentage, style: TextStyle(fontSize: 20)),
            Text("Dec 25", style: TextStyle(fontSize: 20, color: Colors.grey))
          ],),
          Spacer(),
          Text(value, style: TextStyle(fontSize: 20))
        ],
      ),
    );
  }
}