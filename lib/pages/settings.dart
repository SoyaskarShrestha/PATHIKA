import 'package:flutter/material.dart';

import '../commom/my_text.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: MyText("Settings")),
    );
  }
}
