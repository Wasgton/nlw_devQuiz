import 'package:DevQuiz/pages/home/HomeState.dart';
import 'package:DevQuiz/pages/home/home_repository.dart';
import 'package:DevQuiz/shared/models/Quiz.dart';
import 'package:DevQuiz/shared/models/User.dart';
import 'package:flutter/foundation.dart';

class HomeController{

  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  User? user;
  List<Quiz>? quizzes;

  final repository = HomeRespository();

  void getUser() async{
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.success;
  }

  void getQuizzes() async{
    state = HomeState.loading;
    quizzes = await repository.getQuizzes();
    state = HomeState.success;
  }

}