
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'components/tab_bar.dart';
import 'firebase_options.dart';

void main() {
  initializeFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
home: BottomNav(),
    );
  }
}
void initializeFirebase() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
}