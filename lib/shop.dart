/*
 * @Description: 
 * @param : 
 * @return: 
 * @Author: xmj
 * @Date: 2022-08-15 13:59:47
 */
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Kota The Friend',
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey),
    );
  }
}
