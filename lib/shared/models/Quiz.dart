import 'dart:convert';

import 'package:DevQuiz/shared/models/Question.dart';

enum Level { facil, medio, dificil, perito }

extension LevelStringExt on String {
  Level? get parse => {
    "facil":Level.facil,
    "medio":Level.medio,
    "dificil":Level.dificil,
    "perito":Level.perito
  }[this];
}

extension LevelExt on Level? {
  String? get parse => {
    Level.facil:"facil",
    Level.medio:"medio",
    Level.dificil:"dificil",
    Level.perito:"perito"
  }[this];
}

class Quiz {
  final String title;
  final List<Question> questions;
  final int answered;
  final String image;
  final Level? level;

  Quiz({
    required this.title,
    required this.questions,
    this.answered = 1,
    required this.image,
    required this.level,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'questions': questions.map((x) => x.toMap()).toList(),
      'answered': answered,
      'image': image,
      'level': level.parse,
    };
  }

  factory Quiz.fromMap(Map<String, dynamic> map) {
    return Quiz(
      title: map['title'],
      questions: List<Question>.from(
          map['questions']?.map((x) => Question.fromMap(x))),
      answered: map['answered'],
      image: map['image'],
      level: map['level'].toString().parse,
    );
  }

  String toJson() => json.encode(toMap());

  factory Quiz.fromJson(String source) => Quiz.fromMap(json.decode(source));
}
