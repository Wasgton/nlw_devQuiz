import 'package:DevQuiz/pages/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/pages/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/pages/challenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {

  ChallengePage({Key? key}): super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: SafeArea(
            top:true,
            child: QuestionIndicatorWidget()
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: Container(
        child: Column(
          children: [
            QuizWidget(title: "O que o flutter faz em sua totalidade?",),
            AnswerWidget(title:'Kit de desenvolvimento de interface de usuário'),
            AnswerWidget(title:'Possibilita a criação de aplicativos compilados nativamente'),
            AnswerWidget(title:'Acho que é uma marca de café do Himalaia'),
            AnswerWidget(title:'Possibilita a criação de desktops que são muito incríveis'),
          ],
        ),
      ),
    );
  }
}
