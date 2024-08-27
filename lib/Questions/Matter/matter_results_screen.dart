import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

import 'matter_question.dart';

class MatterResultsScreen extends StatefulWidget {
  final List<MatterQuestion> questions;
  final Map<int, int> selectedAnswers;

  const MatterResultsScreen({
    super.key,
    required this.questions,
    required this.selectedAnswers,
  });

  @override
  _MatterResultsScreenState createState() => _MatterResultsScreenState();
}

class _MatterResultsScreenState extends State<MatterResultsScreen> {
  late ConfettiController _confettiController;
  int totalCorrectAnswers = 0;
  int totalWrongAnswers = 0;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 20));
    calculateResults(); // Calculate correct and wrong answers on initialization
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  void calculateResults() {
    totalCorrectAnswers = 0;
    totalWrongAnswers = 0;

    for (int i = 0; i < widget.questions.length; i++) {
      if (widget.selectedAnswers[i] == widget.questions[i].correctAnswerIndex) {
        totalCorrectAnswers++;
      } else {
        totalWrongAnswers++;
      }
    }

    setState(() {
      // Trigger UI update with new scores
    });
  }

  int calculateTotalScore() {
    int totalScore = 0;
    for (int i = 0; i < widget.questions.length; i++) {
      if (widget.selectedAnswers[i] == widget.questions[i].correctAnswerIndex) {
        totalScore += widget.questions[i].mark;
      }
    }
    return totalScore;
  }

  String getResultMessage(int totalScore) {
    if (totalScore >= 80) {
      _confettiController.play();
      return 'Excellent Pass 🤣';
    } else if (totalScore >= 50) {
      return 'Pass 🤓';
    } else {
      return 'Weak Score 🙇';
    }
  }

  @override
  Widget build(BuildContext context) {
    final totalScore = calculateTotalScore();
    final resultMessage = getResultMessage(totalScore);

    return Scaffold(
      appBar: AppBar(title: const Text('Results')),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'Total Score: $totalScore',
                      style: const TextStyle(fontSize: 24),
                    ),
                    Text(
                      resultMessage,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Correct Answers: $totalCorrectAnswers',
                      style: const TextStyle(fontSize: 20, color: Colors.green),
                    ),
                    Text(
                      'Wrong Answers: $totalWrongAnswers',
                      style: const TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.questions.length,
                  itemBuilder: (context, index) {
                    final question = widget.questions[index];
                    final selectedAnswer = widget.selectedAnswers[index];
                    final isCorrect = selectedAnswer == question.correctAnswerIndex;
                    return Card(
                      margin: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(question.questionText),
                            Text(
                              'Your Answer: ${question.options[selectedAnswer!]}',
                              style: TextStyle(
                                color: isCorrect ? Colors.green : Colors.red,
                              ),
                            ),
                            if (!isCorrect)
                              Text(
                                'Correct Answer: ${question.options[question.correctAnswerIndex]}',
                                style: const TextStyle(color: Colors.green),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          if (totalScore >= 80)
            Align(
              alignment: Alignment.topCenter,
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirectionality: BlastDirectionality.explosive,
                shouldLoop: false,
                colors: const [Colors.green, Colors.blue, Colors.pink, Colors.orange, Colors.purple],
              ),
            ),
        ],
      ),
    );
  }
}
