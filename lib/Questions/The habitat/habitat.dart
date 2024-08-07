
import 'package:educationalapp/ResultScreen.dart';
import 'package:flutter/material.dart';

import 'habitat_question.dart';




class HabitatScreen extends StatefulWidget {
  const HabitatScreen({super.key});

  @override
  _HabitatScreenState createState() => _HabitatScreenState();
}

class _HabitatScreenState extends State<HabitatScreen> {
  final Map<int, int> _selectedAnswers = {};

  void _submitAnswers() {
    if (_selectedAnswers.length < habitatQuestion.length) {
      _showIncompleteAnswersDialog();
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HabitatQuestion(questions: habitatQuestion, selectedAnswers: _selectedAnswers),
        ),
      );
    }
  }
  void _showIncompleteAnswersDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Incomplete Answers'),
        content: const Text('Please answer all questions before submitting.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quiz')),
      body: ListView.builder(
        itemCount:  habitatQuestion.length,
        itemBuilder: (context, index) {
          final question = habitatQuestion[index];
          return Card(
            margin: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(question.questionText),
                  ...question.options.asMap().entries.map((entry) {
                    final optionIndex = entry.key;
                    final optionText = entry.value;
                    return RadioListTile<int>(
                      title: Text(optionText),
                      value: optionIndex,
                      groupValue: _selectedAnswers[index],
                      onChanged: (value) {
                        setState(() {
                          _selectedAnswers[index] = value!;
                        });
                      },
                    );
                  }),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
        _submitAnswers,
        child: const Icon(Icons.check),
      ),
    );
  }
}
