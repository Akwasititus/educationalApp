import 'package:educationalapp/Questions/Science/QuizScreen.dart';
import 'package:educationalapp/Questions/The%20solar%20system/solarsystem.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../human_body_question/human_body.dart';

class Science extends StatelessWidget {
  const Science({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

            const Padding(
              padding: EdgeInsets.only(top: 130, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Please select your topic",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Merienda-VariableFont_wght',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: SizedBox(  // Use SizedBox to give a fixed height
                height: double.infinity,  // Adjust this value as needed
                child: ButtonListView(buttons: buttons),
              ),
            ),


          ]
      ),
    );
  }
}

// Create a list of ButtonData objects HumanBodyScreen
List<ButtonData> buttons = [
  ButtonData(
    text: "Plants and Animals",
    imagePath: "assets/image1.jpg",
    onPressed: () {
      Get.to(const QuizScreen());
    },
  ),
  ButtonData(
    text: "Human Body",
    imagePath: "assets/image2.jpg",
    onPressed: () {
        Get.to( const HumanBodyScreen());
    },
  ),
  ButtonData(
    text: "The Solar System",
    imagePath: "assets/image3.jpg",
    onPressed: () {
      Get.to( const SolarSystemScreen());
    },
  ),

  ButtonData(
    text: "Habitats",
    imagePath: "assets/image3.jpg",
    onPressed: () {
      print("Button 3 pressed");
    },
  ),

  ButtonData(
    text: "Matter",
    imagePath: "assets/image3.jpg",
    onPressed: () {
      print("Button 3 pressed");
    },
  ),

  ButtonData(
    text: "Energy",
    imagePath: "assets/image3.jpg",
    onPressed: () {
      print("Button 3 pressed");
    },
  ),

];

class ButtonListView extends StatelessWidget {
  final List<ButtonData> buttons;

  const ButtonListView({Key? key, required this.buttons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: buttons.length,
      itemBuilder: (context, index) {
        return CustomButton(
          text: buttons[index].text,
          imagePath: buttons[index].imagePath,
          onPressed: buttons[index].onPressed,
        );
      },
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
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
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonData {
  final String text;
  final String imagePath;
  final VoidCallback onPressed;

  ButtonData({
    required this.text,
    required this.imagePath,
    required this.onPressed,
  });
}