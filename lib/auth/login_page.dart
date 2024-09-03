import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:pathika/commom/my_text.dart';

import '../commom/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/bali.jpg",
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop)),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    "Welcome Back",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                  CustomForm(
                    text: "Email",
                    color: Colors.grey,
                    //   controller: loginController.emailController,
                    icon: Icon(Icons.email), controller: null,
                  ),
                  CustomForm(
                    text: "Password",
                    color: Colors.grey,
                    //  controller: loginController.pwController,
                    icon: Icon(Icons.password),
                    txt: true,
                    controller: null,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /* SizedBox(
                                width: 50,
                              ),*/
                            ElevatedButton(
                                onPressed: () {},
                                /*onPressed: () =>
                                 // loginController.handleLogin(context),*/
                                child: Text("Log In")),
                            SizedBox(
                              width: 25,
                            ),
                            MyText("Not a member?",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.blue),
                            TextButton(onPressed: (){}, child: MyText("Sign Up"))
                          ],
                        ),
                        SizedBox(height: 50,),
                        MyText(
                          "OR",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        SizedBox(height: 10,),
                        MyText(
                          "Login with",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  IonIcons.logo_facebook,
                                  color: Colors.blue,
                                  size: 50,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  EvaIcons.google,
                                  color: Colors.yellow[100],
                                  size: 50,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
