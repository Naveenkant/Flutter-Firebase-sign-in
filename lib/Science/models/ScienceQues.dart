import 'package:flutter/material.dart';

class ScienceQues {
  final int id, answer;
  final String question;
  final List<String> options;

  ScienceQues({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Who is honoured as Father of Modern Chemistry ? ",
    "options": ['Antoine Lavoisier', 'David Joseph', 'Rinky Martin', 'Newton'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Who invented periodic table?",
    "options": ['Dmitri Mendeleev', 'David Joseph', 'Rinky Martin', 'Newton'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Which is the most abundant gas in the earth's atmosphere?",
    "options": ['Nitrogen (78.08%)', 'Hydrogen', 'Co2', 'Helium'],
    "answer_index": 1,
  },
];
