class SolarSystemQuestion {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;
  final int mark;

  SolarSystemQuestion({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.mark
  });
}


final List<SolarSystemQuestion> solarsystemQuestion  = [
   SolarSystemQuestion(
    questionText: 'What is the largest planet in our solar system',
    options: ['Earth', 'Jupiter', 'Saturn', ],
    correctAnswerIndex: 1,
    mark: 10,
  ),

    SolarSystemQuestion(
    questionText: 'How many moons does Earth have',
    options: ['1', '4', '6', ],
    correctAnswerIndex: 0,
    mark: 10,
  ),

    SolarSystemQuestion(
    questionText: 'Which planet is known for the beautiful ring',
    options: ['Neptune', 'Uranus', 'Saturn', ],
    correctAnswerIndex: 2,
    mark: 10,
  ),

    SolarSystemQuestion(
    questionText: 'How long does it take for the Earth to complete one orbit around the Sun?',
    options: ['one year', 'Two years', 'Three years', ],
    correctAnswerIndex: 0,
    mark: 10,
  ),

    SolarSystemQuestion(
    questionText: 'How many planet are there in the Solar System',
    options: ['10', '8', '6', ],
    correctAnswerIndex: 1,
    mark: 10,
  ),

    SolarSystemQuestion(
    questionText: 'Which planet has the shortest year (orbital period) in the Solar System?',
    options: ['Venus', 'Earth', 'Mercury', ],
    correctAnswerIndex: 2,
    mark: 10,
  ),

    SolarSystemQuestion(
    questionText: 'Which planet is closest to the Sun?',
    options: ['Mercury', 'Earth', 'Mars', ],
    correctAnswerIndex: 0,
    mark: 10,
  ),






  

];