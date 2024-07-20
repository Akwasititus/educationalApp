import 'package:educationalapp/mathTopics.dart';
import 'package:educationalapp/maths.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LearningPage extends StatelessWidget {
  final String username;

  const LearningPage({Key? key, required this.username}) : super(key: key);

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello $username,",
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "Welcome. What do you want to learn today?",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 150),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        CustomButton(
                          text: "Mathematics",
                          color: Colors.blue,
                          onPressed: () {

                            // Get.to(MathematicsTopics());

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  const MathematicsTopics(),
                              ),
                            );

                          }, imagePath: 'assets/db_img.jpg',
                        ),
                        const SizedBox(height: 20),
                        CustomButton(
                          text: "Science",
                          color: Colors.green,
                          onPressed: () {
                            // Handle Science button press
                          }, imagePath: 'assets/db_img.jpg',
                        ),
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


class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;
  final String imagePath;

  const CustomButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
        ),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Adjust text color for visibility
              ),
            ),
          ),
        ),
      ),
    );
  }
}