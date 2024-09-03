import 'package:flutter/material.dart';

import '../commom/my_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(radius: 25, child: Icon(Icons.person)),
            Column(
              children: [
                MyText("Hello Ritnesh,"),
                MyText(
                  "Madhyapur Thimi",
                  fontSize: 15,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                "Recommendations",
                fontSize: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Material(borderRadius: BorderRadius.circular(24),
                elevation: 10,
                child: Container(
                  height: 320,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(24)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Container(
                          width: 400,
                          height: 200,
                          child: Image.asset(
                            "assets/bali.jpg", fit: BoxFit.cover,
                            // Ensure image covers container
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: MyText(
                          "BOO Beach",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: MyText(
                          "Bali,Indonesia",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              
                              onPressed: () {},style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.purple.shade300) ),
                              child: MyText('See Options',color: Colors.white,),
                            ),
                            Container(
                              height: 45,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Colors.purple.shade300,
                                borderRadius: BorderRadius.circular(23)
                              ),
                              child: Center(child: MyText("Budget:1000",color: Colors.white,)),
                            )
                          ],
                        ),
                      )
                      /*  MyText("On gOing Tours"),
                      MyText("On gOing Tours")*/
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              /*Container(
                color: Colors.green,
                height: 200,
                width: 500,
                child: Image.asset("assets/pp.jpg"),
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.green,
                height: 200,
                width: 500,
                child: Image.asset("assets/pp.jpg"),
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.green,
                height: 200,
                width: 500,
                child: Image.asset("assets/pp.jpg"),
              ),
          */
            ],
          ),
        ),
      ),
    );
  }
}
