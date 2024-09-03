import 'package:flutter/material.dart';

import '../commom/my_text.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(
            "Welcome To EMS",
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          MyText("Event Management App", color: Colors.black),
          Image.asset('assets/bali.jpg'),
          MyText(
            "The app for creating moments",
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.grey)),
                  child: MyText("Get Started", color: Colors.black)))
        ],
      ),
    );
  }
}
