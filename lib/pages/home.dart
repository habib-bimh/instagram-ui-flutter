import 'package:flutter/material.dart';
import 'package:instagram_ui/util/bobbule_stori.dart';
import 'package:instagram_ui/util/userpost.dart';

class UserHome extends StatelessWidget {
 // const UserHome({super.key});

  final List  _name=['habib','mishu','rana','labib','roy','iqbal'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Instagram",style: TextStyle(color: Colors.black),),
           Row(
             children: [
               Icon(Icons.add),
               Padding(
                 padding: const EdgeInsets.all(24.0),
                 child: Icon(Icons.favorite),
               ),
               Icon(Icons.share),
             ],
           )
          ],
        ),
      ),
      body:Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: _name.length,
                itemBuilder: (context,index){
              return BobbuleStori(text: _name[index]);
            }),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _name.length,
                itemBuilder: (context,index){
                  return UserPost(name: _name[index],);
                }),
          )
        ],
      )
    );
  }
}
