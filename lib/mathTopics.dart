import 'package:flutter/material.dart';

class MathTopics extends StatelessWidget {


  const MathTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
            children:[


              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/db_img.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 70, bottom: 10, left: 30, right: 30),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          // CustomButton(
                          //   text: "Mathematics",
                          //   color: Colors.blue,
                          //   onPressed: () {
                          //     // Handle Mathematics button press
                          //   }, imagePath: 'assets/db_img.jpg',
                          // ),
                          const SizedBox(height: 20),
                          // CustomButton(
                          //   text: "Science",
                          //   color: Colors.green,
                          //   onPressed: () {
                          //     // Handle Science button press
                          //   }, imagePath: 'assets/db_img.jpg',
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ]
        ),
      ),
    );
  }
}


