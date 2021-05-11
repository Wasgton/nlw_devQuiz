import 'dart:convert';

import 'package:DevQuiz/shared/models/Quiz.dart';
import 'package:DevQuiz/shared/models/User.dart';
import 'package:flutter/services.dart';

class HomeRespository{
  Future<User> getUser() async {
    final response = await rootBundle.loadString("assets/database/user.json");
    final user = User.fromJson(response);
    return user;
  }

  Future<List<Quiz>> getQuizzes() async {
    final response = await rootBundle.loadString("assets/database/quizzes.json");
    final list = jsonDecode(response) as List;
    final quizzes = list.map((e)=>Quiz.fromMap(e)).toList();
    return quizzes;
  }
}