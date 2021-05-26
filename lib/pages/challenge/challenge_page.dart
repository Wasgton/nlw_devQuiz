import 'package:DevQuiz/pages/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/pages/challenge/widgets/next_button/next_button_widget.dart';
import 'package:DevQuiz/pages/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/pages/challenge/widgets/quiz/quiz_widget.dart';
import 'package:DevQuiz/shared/models/Question.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  final List<Question> questions;
  ChallengePage({Key? key, required this.questions}): super(key: key);

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(icon: Icon(Icons.close), onPressed: () {Navigator.pop(context);}),
                QuestionIndicatorWidget(),
              ],
            )
        ),
        preferredSize: Size.fromHeight(100),
      ),
      body: QuizWidget(
          question: widget.questions[0]
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: NextButtonWidget.white(label: "Pular",onTap: (){},)),
              Expanded(child: NextButtonWidget.green(label: "Confirmar",onTap: (){}))
            ],
          ),
        ),
      ),
    );
  }
}
