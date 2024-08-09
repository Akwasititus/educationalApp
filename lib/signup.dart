// import 'dart:ui';
//
// import 'package:educationalapp/landingpage.dart';
// import 'package:flutter/material.dart';
//
// import 'package:intl/intl.dart';
//
// import 'mainPage.dart';
//
//
// class Signup extends StatefulWidget {
//   const Signup({super.key});
//
//   @override
//   _SignupState createState() => _SignupState();
// }
//
// class _SignupState extends State<Signup> {
//   final TextEditingController _username = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _dobController = TextEditingController();
//   bool _obscureText = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       backgroundColor: Colors.transparent,
//       body: Stack(
//         children:[
//
//           BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
//
//             child: AnimatedContainer(
//               duration: const Duration(seconds: 1),
//               curve: Curves.easeIn,
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/img7.jpg'),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//           ),
//
//           SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(height: 20),
//                   const Text(
//                     "Let's Sign you in.",
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontFamily: 'fontt',
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const Text(
//                     "Welcome back.\nYou've been missed!",
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const SizedBox(height: 40),
//                   TextField(
//                     style: const TextStyle(color: Colors.white),
//                     controller: _username,
//                     decoration: InputDecoration(
//                       labelText: 'Username',
//                       hintText: 'Your name',
//                       labelStyle: const TextStyle(color: Colors.white),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(
//                           color: Colors.white, // Border color
//                           width: 1.0,
//                         ),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(
//                           color: Colors.white, // Border color when the text field is enabled
//                           width: 1.0,
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(
//                           color: Colors.white, // Border color when the text field is focused
//                           width: 1.0,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   TextField(
//                     style: const TextStyle(color: Colors.white),
//                     controller: _passwordController,
//                     obscureText: _obscureText,
//                     decoration: InputDecoration(
//                       labelText: 'Password',
//                       labelStyle: const TextStyle(color: Colors.white),
//
//                       // filled: true,
//                       // fillColor: Colors.grey[200], // You can change this to any color you like
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(
//                           color: Colors.white, // Border color
//                           width: 1.0,
//                         ),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(
//                           color: Colors.white, // Border color when the text field is enabled
//                           width: 1.0,
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(
//                           color: Colors.white, // Border color when the text field is focused
//                           width: 1.0,
//                         ),
//                       ),
//                       suffixIcon: IconButton(
//                         icon: Icon(
//                           _obscureText ? Icons.visibility_off : Icons.visibility,
//                           color: Colors.grey,
//                         ),
//                         onPressed: () {
//                           setState(() {
//                             _obscureText = !_obscureText;
//                           });
//                         },
//                       ),
//                     ),
//                   ),
//
//                   const SizedBox(height: 20),
//                   TextField(
//                     style: TextStyle(color: Colors.white),
//                     controller: _dobController,
//                     decoration: InputDecoration(
//                       labelText: 'Date of Birth',
//                       hintText: 'DD/MM/YYYY',
//                       labelStyle: TextStyle(color: Colors.white),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(
//                           color: Colors.white, // Border color
//                           width: 1.0,
//                         ),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(
//                           color: Colors.white, // Border color when the text field is enabled
//                           width: 1.0,
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(
//                           color: Colors.white, // Border color when the text field is focused
//                           width: 1.0,
//                         ),
//                       ),
//                       suffixIcon: IconButton(
//                         icon: const Icon(Icons.calendar_today),
//                         onPressed: () async {
//                           DateTime? pickedDate = await showDatePicker(
//                             context: context,
//                             initialDate: DateTime.now(),
//                             firstDate: DateTime(1900),
//                             lastDate: DateTime.now(),
//                           );
//                           if (pickedDate != null) {
//                             String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
//                             setState(() {
//                               _dobController.text = formattedDate;
//                             });
//                           }
//                         },
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 30),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) =>  LearningPage(username: _username.text),
//                         ),
//                       );
//                       // Handle sign in
//                     },
//                     style: ElevatedButton.styleFrom(
//                       // primary: Colors.deepPurple,
//                       minimumSize: const Size(double.infinity, 50),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                     child: const Text('Sign in'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//
//         ]
//       ),
//     );
//   }
// }


import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:educationalapp/landingpage.dart';
import 'mainPage.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  bool _obscureText = true;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img7.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        "Let's Sign you in.",
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'fontt',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "Welcome back.\nYou've been missed!",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 40),
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'your.email@example.com',
                          labelStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'^[0-9]+$')),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        controller: _passwordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText ? Icons.visibility_off : Icons.visibility,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        controller: _dobController,
                        decoration: InputDecoration(
                          labelText: 'Date of Birth',
                          hintText: 'DD/MM/YYYY',
                          labelStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.calendar_today,color: Colors.white,),
                            onPressed: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now(),
                              );
                              if (pickedDate != null) {
                                String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
                                setState(() {
                                  _dobController.text = formattedDate;
                                });
                              }
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your date of birth';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: _isLoading
                            ? null
                            : () async {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              _isLoading = true;
                            });
                            try {
                              // Implement actual login logic here
                              await Future.delayed(const Duration(seconds: 4)); // Simulating network request
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LearningPage(username: _emailController.text),
                                ),
                              );
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Login failed: ${e.toString()}')),
                              );
                            } finally {
                              setState(() {
                                _isLoading = false;
                              });
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: _isLoading
                            ? const CircularProgressIndicator(color: Colors.white)
                            : const Text('Sign in'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}