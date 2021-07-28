class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Which crop is sown on the largest area in India?",
    "options": ['Rice', 'Wheat', 'SugarCane', 'Maize'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Entomology is the science that studies",
    "options": [
      'Behaviour of human beings',
      'Insects',
      'The origin and history of technical',
      'The formation of rocks'
    ],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": " Grand Central Terminal, Park Avenue, New York is the world's",
    "options": [
      ' highest railway station',
      'longest railway station',
      'largest railway station',
      'None of the above'
    ],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "The world smallest country is?",
    "options": ['Canada', 'Russia', 'Maldives', 'Vatican City'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question":
        "Novak Djokovic is a famous player associated with the game of?",
    "options": ['Hockey', 'Football', 'Chess', 'Lawn Tennis'],
    "answer_index": 1,
  },
];
