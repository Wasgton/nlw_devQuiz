import 'package:DevQuiz/pages/challenge/challenge_controller.dart';
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
  final controller = ChallengeController();
  final pageController = PageController();
  @override
  void initState(){
    pageController.addListener(() {
      controller.currentPage = pageController.page!.toInt();
    });
    super.initState();
  }

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
                ValueListenableBuilder<int>(
                  valueListenable: controller.currentPageNotifier,
                  builder: (context,value,_) => QuestionIndicatorWidget(
                    currentPage: value,
                    length: widget.questions.length,
                  ),
                ),
              ],
            )
        ),
        preferredSize: Size.fromHeight(100),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: widget.questions.map(
                (e) => QuizWidget(question: e)
        ).toList(),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: NextButtonWidget.white(label: "Pular",onTap: (){
                pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear,
                );
              },)),
              Expanded(child: NextButtonWidget.green(label: "Confirmar",onTap: (){

              }))
            ],
          ),
        ),
      ),
    );
  }
}
