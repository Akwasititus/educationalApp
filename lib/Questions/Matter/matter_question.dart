class MatterQuestion {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;
  final int mark;

  MatterQuestion({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.mark
  });
}


final List<MatterQuestion>matterQuestion  = [
   MatterQuestion(
    questionText: 'What is matter?',
    options: ['Anything that has no mass ans takes up no space', 
    'Anything that has mass but takes up no space', 
    'Anything that has mass and takes up space', ],
    correctAnswerIndex: 2,
    mark: 10,
  ),

     MatterQuestion(
    questionText: 'What is three main state of matter?',
    options: ['Solid, Liquid, and Gas','Solid, Liquid, and Plasma', 'Liquid, Gas, and Plasma'],
    correctAnswerIndex: 0,
    mark: 10,
  ),

    MatterQuestion(
    questionText: 'What is an example of Solid?',
    options: ['Water','Book', 'Air'],
    correctAnswerIndex: 1,
    mark: 10,
  ),

     MatterQuestion(
    questionText: 'What happened when you heart up Solid?',
    options: ['It get colder','It stays the same', 'It turn into liquid'],
    correctAnswerIndex: 2,
    mark: 10,
  ),

     MatterQuestion(
    questionText: 'What is an example of Gas?',
    options: ['A ballon filled with air','A toy car', 'A cup of water'],
    correctAnswerIndex: 0,
    mark: 10,
  ),

     MatterQuestion(
    questionText: 'What happened when you cool down a liquid?',
    options: ['It get hotter','It disappears', 'It turns into solid'],
    correctAnswerIndex: 2,
    mark: 10,
  ),

     MatterQuestion(
    questionText: 'What is the smallest unit of matter?',
    options: ['A molecule','An Atom', 'Any tiny thing'],
    correctAnswerIndex: 1,
    mark: 10,
  ),

     MatterQuestion(
    questionText: 'What is something that has no shape or volume?',
    options: ['Solid','Gas', 'Liquid'],
    correctAnswerIndex: 1,
    mark: 10,
  ),

     MatterQuestion(
    questionText: 'What happened when a substance is meet?',
    options: ['It changes from Solid to Gas ','It changes from Gas to Liquid', 'It changes from Solid to Liquid '],
    correctAnswerIndex: 2,
    mark: 10,
  ),

     MatterQuestion(
    questionText: 'What is the process called when a Liquid changes to Gas?',
    options: ['Melting','Freezing', 'Evaporation'],
    correctAnswerIndex: 1,
    mark: 10,
  ),

     MatterQuestion(
    questionText: 'What is the state of matter that has no fixed shape or volume?',
    options: ['Gas','Solid', 'Liquid'],
    correctAnswerIndex: 0,
    mark: 10,
  ),

     MatterQuestion(
    questionText: 'What is the term for the amount of matter in an object?',
    options: ['Weight','Size', 'Mass'],
    correctAnswerIndex: 2,
    mark: 10,
  ),

     MatterQuestion(
    questionText: 'What is the process call when a gas changes to a liquid?',
    options: ['Condensation','Melting', 'Evaporation'],
    correctAnswerIndex: 0,
    mark: 10,
  ),

     MatterQuestion(
    questionText: 'What is an example of a substance tha can changes shape but keep its mass?',
    options: ['Liquid','Gas', 'Solid'],
    correctAnswerIndex: 0,
    mark: 10,
  ),

     MatterQuestion(
    questionText: 'What is the smallest unit of matter?',
    options: ['Compound','Element', 'Atom'],
    correctAnswerIndex: 2,
    mark: 10,
  ),


   

];