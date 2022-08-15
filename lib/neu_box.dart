/*
 * @Description: 
 * @param : 
 * @return: 
 * @Author: xmj
 * @Date: 2022-08-15 10:24:16
 */
import 'package:flutter/material.dart';

class NeUBox extends StatelessWidget {
  final child;
  const NeUBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // width: 100,
      padding: EdgeInsets.all(8),
      child: Center(child: child),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 15,
              offset: const Offset(5, 5),
            ),
            // 拟态
            const BoxShadow(
              color: Colors.white,
              blurRadius: 15,
              offset: Offset(-5, -5),
            )
          ]),
    );
  }
}
