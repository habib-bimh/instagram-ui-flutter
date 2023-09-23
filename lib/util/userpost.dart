import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  //const UserPost({super.key});

  final String name;
  UserPost({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //profile photo
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //name
                  Text(name)
                ],
              ),
              //icon
              Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.message),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        // comment
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text("Liked by "),
              Text(
                "Mishu ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("and "),
              Text(
                "others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        //caption
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          child: RichText(
            text: TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(text: "fjffhefslhf ",style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: "kdjnfkasfksdnjlfjndslfjnldnndljndfbaksjdbnfvadfgvdfagdgdafgvdfavadsfvasdfvasdv")
            ]),
          ),
        )
      ],
    );
  }
}
