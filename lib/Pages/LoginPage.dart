/*
 * @Description: 
 * @param : 
 * @return: 
 * @Author: xmj
 * @Date: 2022-08-15 16:36:06
 */
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Image.asset("lib/images/1.png"),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 55,
            decoration: BoxDecoration(
                color: Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF75269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ]),
            child: Row(
              children: [
                const Icon(
                  Icons.person,
                  size: 27,
                  color: Color(0xFF475269),
                ),
                const SizedBox(width: 15),
                Container(
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Enter username"),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 55,
            decoration: BoxDecoration(
                color: Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF75269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ]),
            child: Row(
              children: [
                const Icon(
                  Icons.lock,
                  size: 27,
                  color: Color(0xFF475269),
                ),
                const SizedBox(width: 15),
                SizedBox(
                    width: 250,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: "Enter password"),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(left: 15),
            alignment: Alignment.centerLeft,
            child: TextButton(
                onPressed: () {},
                child: const Text("Forget Password",
                    style: TextStyle(
                      color: Color(0xFF475269),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ))),
          ),
          SizedBox(height: 40),
          InkWell(
            onTap: () {},
            child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xF475269),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]),
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                )),
          ),
        ],
      ))),
    );
  }
}
