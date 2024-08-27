
import 'package:educationalapp/ResultScreen.dart';
import 'package:flutter/material.dart';

import 'geo_question.dart';
import 'geo_results_screen.dart';





class GeoScreen extends StatefulWidget {
  const GeoScreen({super.key});

  @override
  _GeoScreenState createState() => _GeoScreenState();
}

class _GeoScreenState extends State<GeoScreen> {
  final Map<int, int> _selectedAnswers = {};

  void _submitAnswers() {
    if (_selectedAnswers.length < geoQuestion.length) {
      _showIncompleteAnswersDialog();
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GeoResultsScreen(questions: geoQuestion, selectedAnswers: _selectedAnswers),
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
        itemCount: geoQuestion.length,
        itemBuilder: (context, index) {
          final question = geoQuestion[index];
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
