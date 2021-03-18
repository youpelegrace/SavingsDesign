import 'package:flutter/material.dart';

class DateItems extends StatelessWidget {
  const DateItems({
    this.day, this.month, this.avatar
  });
  final String day;
  final String month;
  final Widget avatar;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(day, style: TextStyle(color: Colors.grey)),
        SizedBox(height:5),
        Text(month, style: TextStyle(color: Colors.grey)),
        avatar
      ],);
  }
}


