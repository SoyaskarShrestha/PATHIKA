import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../commom/my_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
          padding: EdgeInsets.all(24),
        child:Container(
          child: Column(
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child:ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  // ADD Child For IMAGE
                  child: Image.network('https://img.freepik.com/free-vector/blue-circle-with-white-user_78370-4707.jpg?size=626&ext=jpg'),
                ) ,
              ),

              SizedBox(height:24),
              
              Text('Name',style: TextStyle(fontSize: 30),),
              Text('Email', style: TextStyle(fontSize: 20),),
              const SizedBox(height: 25),
              SizedBox(
                width: 200,
                child: ElevatedButton(onPressed: () {} ,style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)), child: const Text('Edit Profile page'),
                ),
              ),
              const SizedBox(height: 25),


              //Menu
              itemProfile('Your Credentials', '981234566', CupertinoIcons.phone),
              SizedBox(height: 20),
              itemProfile('Emergency contact', '', CupertinoIcons.phone),
              SizedBox(height: 20),
              itemProfile('Emergency Location Sharing', '', CupertinoIcons.location),
              SizedBox(height: 20),
              itemProfile('Book flights', '', CupertinoIcons.airplane),
              SizedBox(height: 20),
              itemProfile('Setting', '', CupertinoIcons.settings),



            ],

          )
        )

      ),
    );


  }
  itemProfile(String title, String subtitle, IconData iconData){
    return Container(

      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            color: Colors.black.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 10,
          )
        ]
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
      ),
    );
  }
}
