
import 'package:educationalapp/ResultScreen.dart';
import 'package:flutter/material.dart';


import 'number_question.dart';
import 'number_results_screen.dart';



class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  _NumberScreenState createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  final Map<int, int> _selectedAnswers = {};

  void _submitAnswers() {
    if (_selectedAnswers.length < numberQuestion.length) {
      _showIncompleteAnswersDialog();
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NumberResultsScreen(questions: numberQuestion, selectedAnswers: _selectedAnswers),
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
        itemCount: numberQuestion.length,
        itemBuilder: (context, index) {
          final question = numberQuestion[index];
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
