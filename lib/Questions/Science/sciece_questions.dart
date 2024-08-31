class Question {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;
  final int mark;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.mark
  });
}


final List<Question> questions = [
  Question(
    questionText: 'What is the process by which plants make their own food?',
    options: ['Respiration', 'Digestion', 'Photosynthesis', 'Transpiration'],
    correctAnswerIndex: 2,
    mark: 10,
  ),
  Question(
    questionText: 'Which part of the plant is responsible for absorbing water and nutrients from the soil?',
    options: ['Stem', 'Leaves', 'Flowers', 'Roots'],
    correctAnswerIndex: 3,
    mark: 10,
  ),
  Question(
    questionText: 'What gas do plants release during photosynthesis?',
    options: ['Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen'],
    correctAnswerIndex: 0,
    mark: 10,
  ),
  Question(
    questionText: 'What is the term for animals that only eat plants?',
    options: ['Carnivores', 'Herbivores', 'Omnivores', 'Insectivores'],
    correctAnswerIndex: 1,
    mark: 10,
  ),
  Question(
    questionText: 'What is the largest land animal in the world?',
    options: ['Elephant', 'Lion', 'Hippopotamus', 'Giraffe'],
    correctAnswerIndex: 0,
    mark: 10,
  ),
  Question(
    questionText: 'Which part of the plant helps it to reproduce by producing seeds?',
    options: ['Stem', 'Leaves', 'Flowers', 'Roots'],
    correctAnswerIndex: 2,
    mark: 10,
  ),
  Question(
    questionText: 'What type of animal is a frog?',
    options: ['Mammal', 'Reptile', 'Amphibian', 'Bird'],
    correctAnswerIndex: 2,
    mark: 10,
  ),
  Question(
    questionText: 'Which of the following is a characteristic of mammals?',
    options: ['They lay eggs', 'They have feathers', 'They have fur or hair', 'They have scales'],
    correctAnswerIndex: 2,
    mark: 10,
  ),
  Question(
    questionText: 'What is the term for the process by which caterpillars transform into butterflies?',
    options: ['Evolution', 'Metamorphosis', 'Photosynthesis', 'Germination'],
    correctAnswerIndex: 1,
    mark: 10,
  ),
  Question(
    questionText: 'What do bees collect from flowers to make honey?',
    options: ['Leaves', 'Nectar', 'Pollen', 'Seeds'],
    correctAnswerIndex: 1,
    mark: 10,
  ),
];
