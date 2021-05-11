import 'dart:convert';

import 'package:DevQuiz/shared/models/Answer.dart';

class Question {
  final String question;
  final List<Answer> answer;

  Question({required this.question, required this.answer})
      : assert(answer.length == 4);

  Map<String, dynamic> toMap() {
    return {
      'question': question,
      'answer': answer.map((x) => x.toMap()).toList(),
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      question: map['question'],
      answer: List<Answer>.from(map['answer']?.map((x) => Answer.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) =>
      Question.fromMap(json.decode(source));
}
