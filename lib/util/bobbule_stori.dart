import 'package:flutter/material.dart';
class BobbuleStori extends StatelessWidget {
 // const BobbuleStori({super.key});
  final String text;
  BobbuleStori({required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey
            ),
          ),
          SizedBox(height: 10,),
          Text(text)
        ],
      ),
    );
  }
}
