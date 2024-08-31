class NumberQuestion {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;
  final int mark;

  NumberQuestion({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.mark
  });
}


final List< NumberQuestion> numberQuestion  = [
   NumberQuestion(
    questionText: 'What is the value of 16 x 5?',
    options: ['60', '70', '50', '80'],
    correctAnswerIndex: 3,
    mark: 5,
  ),

  NumberQuestion(
    questionText: 'What is 144 ÷ 12?',
    options: ['12', '7', '10', '16'],
    correctAnswerIndex: 0,
    mark: 5,
  ),

  NumberQuestion(
    questionText: 'What is 25 x 4?',
    options: ['12', '100', '10', '50'],
    correctAnswerIndex: 1,
    mark: 5,
  ),

  NumberQuestion(
    questionText: 'What is the sum of 78 and 56?',
    options: ['12', '100', '144', '7856'],
    correctAnswerIndex: 2,
    mark: 5,
  ),

  NumberQuestion(
    questionText: 'What is 200 ÷ 25?',
    options: ['12', '0', '10', '8'],
    correctAnswerIndex: 3,
    mark: 5,
  ),

  NumberQuestion(
    questionText: 'What is 7³?',
    options: ['343', '434', '443', '334'],
    correctAnswerIndex: 0,
    mark: 5,
  ),

   NumberQuestion(
    questionText: 'What is the difference between 123 and 87?',
    options: ['34', '35', '38', '40'],
    correctAnswerIndex: 2,
    mark: 5,
  ),

 NumberQuestion(
    questionText: 'What is the square root of 169?',
    options: ['12', '16', '14', '13'],
    correctAnswerIndex: 3,
    mark: 5,
  ),

  NumberQuestion(
    questionText: 'What is 17 x 6?',
    options: ['102', '116', '143', '135'],
    correctAnswerIndex: 0,
    mark: 5,
  ),

  
  NumberQuestion(
    questionText: 'What is 64 / 6?',
    options: ['8', '6', '10', '9'],
    correctAnswerIndex: 0,
    mark: 5,
  ),

   NumberQuestion(
    questionText: 'What is the value of 81 / 9?',
    options: ['8', '6', '10', '9'],
    correctAnswerIndex: 3,
    mark: 5,
  ),

   NumberQuestion(
    questionText: 'What is 15 x 7 ?',
    options: ['81', '105', '110', '91'],
    correctAnswerIndex: 1,
    mark: 5,
  ),

   NumberQuestion(
    questionText: 'What is 72 / 6?',
    options: ['8', '6', '12', '9'],
    correctAnswerIndex: 2,
    mark: 5,
  ),

   NumberQuestion(
    questionText: 'What is 4 x 18 ?',
    options: ['72', '62', '101', '22'],
    correctAnswerIndex: 0,
    mark: 5,
  ),

   NumberQuestion(
    questionText: 'What is the cube root of 512?',
    options: ['8', '6', '10', '9'],
    correctAnswerIndex: 0,
    mark: 5,
  ),

   NumberQuestion(
    questionText: 'What is the value of 144 / 8 ?',
    options: ['81', '16', '10', '92'],
    correctAnswerIndex: 1,
    mark: 5,
  ),

   NumberQuestion(
    questionText: 'What is 11 x 9 ?',
    options: ['111', '69', '101', '99'],
    correctAnswerIndex: 3,
    mark: 5,
  ),

   NumberQuestion(
    questionText: 'What is 52 / 4?',
    options: ['12', '6', '13', '9'],
    correctAnswerIndex: 2,
    mark: 5,
  ),

  NumberQuestion(
    questionText: 'What is 11³?',
    options: ['343', '4341', '443', '1331'],
    correctAnswerIndex: 3,
    mark: 5,
  ),

   NumberQuestion(
    questionText: 'What is  the square root of 121?',
    options: ['12', '11', '13', '9'],
    correctAnswerIndex: 1,
    mark: 5,
  ),


  

];