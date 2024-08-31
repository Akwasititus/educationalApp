import 'package:educationalapp/Questions/Science/science.dart'; 
import 'package:educationalapp/maths.dart';
import 'package:flutter/material.dart';


import 'Questions/Grammer/grammer.dart';
import 'history.dart';

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

            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 40, left: 30, right: 30),
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
                          "What do you want to learn today?",
                          style: TextStyle(
                            fontFamily: 'Merienda-VariableFont_wght',
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 80),
                    Column(
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
                        CustomButton(
                          text: "Science",
                          color: Colors.green,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  const Science(),
                              ),
                            );
                          }, imagePath: 'assets/db_img.jpg',
                        ),
                        CustomButton(
                          text: "History",
                          color: Colors.green,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>   HistoryScreen(),
                              ),
                            );
                          }, imagePath: 'assets/db_img.jpg',
                        ), 
                        CustomButton(
                          text: "English",
                          color: Colors.green,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  const  GrammerScreen(),
                              ),
                            );
                          }, imagePath: 'assets/db_img.jpg',
                        ),
                        // const SizedBox(height: 20),
                      ],
                    )
                  ],
                ),
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
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
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
                fontFamily: 'Merienda-VariableFont_wght',
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