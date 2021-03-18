import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    this.header, this.moneyValue
  }) ;
  final String header;
  final String moneyValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Text(header,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          Text( moneyValue,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          Icon(Icons.keyboard_arrow_right, color: Colors.grey)
          ],
         )
        );
  }
}

