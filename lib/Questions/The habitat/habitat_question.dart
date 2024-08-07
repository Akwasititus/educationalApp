class HabitatQuestion {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;
  final int mark;

  HabitatQuestion({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.mark
  });
}


final List<HabitatQuestion>habitatQuestion  = [
   HabitatQuestion(
    questionText: 'What is the largest planet in our solar system',
    options: ['Earth', 'Jupiter', 'Saturn', ],
    correctAnswerIndex: 1,
    mark: 10,
  ),

];