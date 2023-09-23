import 'package:flutter/material.dart';

class ShopStor extends StatelessWidget {
  const ShopStor({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder:(context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue[300],
            ),
          );
        });
  }
}
