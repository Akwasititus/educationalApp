class GrammerQuestion {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;
  final int mark;

  GrammerQuestion({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.mark
  });
}


final List<GrammerQuestion>grammerQuestion  = [
   GrammerQuestion(
    questionText: 'Which word is a verb?',
    options: ['Happy', 'Quickly', 'Big', 'Dog' ],
    correctAnswerIndex: 1,
    mark: 5,
  ),

   GrammerQuestion(
    questionText: ' What is the past tense of "go"?',
    options: ['Went', 'Goes', 'Gone', 'Going' ],
    correctAnswerIndex: 0,
    mark: 5,
  ),

  GrammerQuestion(
    questionText: ' Which word is an adjective?',
    options: ['Play', 'Car', 'Big', 'Small' ],
    correctAnswerIndex: 0,
    mark: 5,
  ),

  GrammerQuestion(
    questionText: 'What is the plural form of "child"?',
    options: ['Children', 'Childrens', 'Childs', 'Childes' ],
    correctAnswerIndex: 0,
    mark: 5,
  ),

  GrammerQuestion(
    questionText: 'Which sentence is correct?',
    options: ['She go to school', 'She goed to school', ' She going to school.', 'She goes to school.' ],
    correctAnswerIndex: 3,
    mark: 5,
  ),

  GrammerQuestion(
    questionText: ' What is the opposite of "hot"?',
    options: ['Heat', 'Cool', 'Cold', 'Warm' ],
    correctAnswerIndex: 2,
    mark: 5,
  ),

  
  GrammerQuestion(
    questionText: 'Which word is spelled correctly?',
    options: [' Becuse', 'Because', 'Becase', 'Becusee' ],
    correctAnswerIndex: 1,
    mark: 5,
  ),

  GrammerQuestion(
    questionText: 'What is the correct article to use with "apple"?',
    options: ['A', 'The', 'An', 'None' ],
    correctAnswerIndex: 2,
    mark: 5,
  ),

  GrammerQuestion(
    questionText: 'What is the synonym of "happy"?',
    options: ['Sad', 'Angry', 'Tired', 'Joyful' ],
    correctAnswerIndex: 3,
    mark: 5,
  ),

    GrammerQuestion(
    questionText: 'Which sentence is in the future tense?',
    options: ['I went to the park.', 'I go to the park.', 'I am going to the park.', 'I will go to the park.' ],
    correctAnswerIndex: 3,
    mark: 5,
  ),

  GrammerQuestion(
    questionText: ' Which word is a conjunction?',
    options: ['And', 'Under', 'Dog', 'Quickly' ],
    correctAnswerIndex: 0,
    mark: 5,
  ),

   GrammerQuestion(
    questionText: ' Which word is a pronoun?',
    options: ['Eat', 'Cat', 'She', 'Big' ],
    correctAnswerIndex: 2,
    mark: 5,
  ),

  GrammerQuestion(
    questionText: 'What is the meaning of "synonym"?',
    options: ['A word that means the opposite', ' A word that means the same', ' A word that means the same', ' A word that looks the same' ],
    correctAnswerIndex: 2,
    mark: 5,
  ),

  GrammerQuestion(
    questionText: ' What is the meaning of "antonym"?',
    options: [' A word that means the same', 'A word that means the opposite', 'A word that sounds the same', ' A word that looks the same' ],
    correctAnswerIndex: 1,
    mark: 5,
  ),

  GrammerQuestion(
    questionText: ' Which sentence is in the correct order?',
    options: ['Go I to store the.', 'Store the to go I', ' I go to the store', 'Me go store to the' ],
    correctAnswerIndex: 2,
    mark: 5,
  ),

  GrammerQuestion(
    questionText: 'Which word completes this sentence: "I would like ___ apple"?',
    options: ['An', 'A', 'The', 'To' ],
    correctAnswerIndex: 0,
    mark: 5
  ),

   GrammerQuestion(
    questionText: ' What is the correct form of the verb in this sentence: "She ___ to the store"?',
    options: ['Goed', 'Going', 'Go', 'Goes' ],
    correctAnswerIndex: 3,
    mark: 5,
  ),

    GrammerQuestion(
    questionText: 'What is the correct word to complete this sentence: "He has ___ a letter"?',
    options: ['writing', 'writes', 'written', 'wrote' ],
    correctAnswerIndex: 2,
    mark: 5,
  ),

  GrammerQuestion(
    questionText: ' Which of these sentences is a command?',
    options: ['The door is closed.', 'Close the door.', ' I am closing the door', 'Will you close the door?' ],
    correctAnswerIndex: 1,
    mark: 5,
  ),

   GrammerQuestion(
    questionText: ' What is the correct form of the word "run" in this sentence: "They ___ every morning"?',
    options: ['ran', 'running', 'run', 'runs' ],
    correctAnswerIndex: 2,
    mark: 5,
  ),

  

  

];