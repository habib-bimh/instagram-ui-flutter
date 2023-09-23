import 'package:flutter/material.dart';
import 'package:instagram_ui/util/shop_stor.dart';
class UserShop extends StatelessWidget {
  const UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
        body:ShopStor(),
    );
  }
}
