
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pathika/auth/login_page.dart';
import 'package:pathika/pages/profile.dart';
import 'package:pathika/pages/settings.dart';
import 'package:pathika/pages/splash_screen.dart';

import 'components/tab_bar.dart';
import 'firebase_options.dart';

void main() {
  initializeFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
home: FirstPage(),
      routes: {
        '/profile': (context) => ProfilePage(),
       // '/dash': (context) => DashBoard(),
        '/setting': (context) => Settings(),
        '/login': (context) => LoginPage(),
        //'/sign': (context) => ProfileDetails(),
        //'/event': (context) => Event(),
       // '/about': (context) => About(),
       // '/updateP': (context) => UpdateProfile(),
      //  '/notice': (context) => Notice(),
       // '/book': (context) => BookingList(),
      },
    );
  }
}
void initializeFirebase() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
}