class GeoQuestion {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;
  final int mark;

  GeoQuestion({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.mark
  });
}


final List<GeoQuestion> geoQuestion  = [
   GeoQuestion(
    questionText: 'What is the name of a polygon with 8 sizes?',
    options: ['Hexagon', 'Heptagon', 'Nonagon', 'Octagon'],
    correctAnswerIndex: 3,
    mark: 5,
  ),

  GeoQuestion(
    questionText: 'What is the sum of the interior angles of a triangle?',
    options: [' 90°', '180°', '270°', '360°'],
    correctAnswerIndex: 1,
    mark: 5,
  ),

   GeoQuestion(
    questionText: ' What is the name of a polygon with 5 sides?',
    options: [' Triangle', 'Quadrilateral', 'Pentagon', 'Hexagon'],
    correctAnswerIndex: 1,
    mark: 5,
  ),

   GeoQuestion(
    questionText: '  What do you call a triangle with all sides of equal length?',
    options: ['Equilateral', 'Right', 'Isosceles', 'Scalene'],
    correctAnswerIndex: 0,
    mark: 5,
  ),

   GeoQuestion(
    questionText: 'What is the area of a rectangle with a length of 8 cm and a width of 3 cm? ',
    options: ['  30 cm²', ' 16 cm²', ' 24 cm²', '11 cm²'],
    correctAnswerIndex: 2,
    mark: 5,
  ),

  GeoQuestion(
    questionText: ' How many sides does a hexagon have?',
    options: [' 5', ' 7', ' 4', '6'],
    correctAnswerIndex: 3,
    mark: 5,
  ),

  GeoQuestion(
    questionText: 'What is the perimeter of a square with a side length of 4 cm?',
    options: [' 12 cm', ' 16 cm', ' 4 cm', '24 cm'],
    correctAnswerIndex: 1,
    mark: 5,
  ),

  GeoQuestion(
    questionText: 'What is the name of a 3D shape with 6 equal square faces?',
    options: [' Sphere', ' Cylinder', ' Cube', 'Pyramid'],
    correctAnswerIndex: 2,
    mark: 5,
  ),

  GeoQuestion(
    questionText: ' What is the circumference of a circle with a diameter of 10 cm? (Use π ≈ 3.14)',
    options: [' 15.7 cm', '20.7 cm', ' 40.7 ', '31.4 cm'],
    correctAnswerIndex: 3,
    mark: 5,
  ),

  GeoQuestion(
    questionText: 'How many millimeters are in a centimeter?',
    options: ['10', '100', ' 1000', '1'],
    correctAnswerIndex: 0,
    mark: 5,
  ),

  GeoQuestion(
    questionText: 'How many centimeters are in a meter?',
    options: ['10', '100', ' 1000', '1'],
    correctAnswerIndex: 1,
    mark: 5,
  ),

  GeoQuestion(
    questionText: ' What is the area of a square with a side length of 9 cm?',
    options: ['90 cm²', '99 cm²', ' 91 cm²', '81 cm²'],
    correctAnswerIndex: 1,
    mark: 5,
  ),

   GeoQuestion(
    questionText: 'How many grams are in a kilogram?',
    options: ['10', '100', ' 1000', '1'],
    correctAnswerIndex: 2,
    mark: 5,
  ),

   GeoQuestion(
    questionText: 'What is the length of 2500 millimeters in meters?',
    options: ['2.5 m', '0.2 m', ' 25 m', '250 m'],
    correctAnswerIndex: 1,
    mark: 5,
  ),

  GeoQuestion(
    questionText: 'How many minutes are in 3 hours?',
    options: ['10', '100', ' 180', '240'],
    correctAnswerIndex: 2,
    mark: 5,
  ),

  GeoQuestion(
    questionText: 'How many seconds are in 1 hour?',
    options: ['60', '100', ' 600', '3600'],
    correctAnswerIndex: 3,
    mark: 5,
  ),

  GeoQuestion(
    questionText: ' Which unit would you use to measure the height of a building?',
    options: ['Millimeters', 'Centimeters', ' Kilometers', 'Meters'],
    correctAnswerIndex: 3,
    mark: 5,
  ),

  GeoQuestion(
    questionText: 'What is the area of a triangle with a base of 8 cm and a height of 6 cm?',
    options: ['24 cm²', '36 cm²', ' 48 cm²', '54 cm²'],
    correctAnswerIndex: 0,
    mark: 5,
  ),

  GeoQuestion(
    questionText: ' What is the volume of a cube with side lengths of 5 cm?',
    options: ['60 cm³', '125 cm³', ' 25 cm³', '36 cm³'],
    correctAnswerIndex: 1,
    mark: 5,
  ),

    GeoQuestion(
    questionText: ' What is the volume of a rectangular prism with a length of 4 cm, a width of 3 cm, and a height of 2 cm?',
    options: ['12 cm³', '18 cm³', ' 24 cm³', '36 cm³'],
    correctAnswerIndex: 3,
    mark: 5,
  ),
  

];