import 'package:flutter/material.dart';

import '../commom/my_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: MyText('Profile')),
    );
  }
}
