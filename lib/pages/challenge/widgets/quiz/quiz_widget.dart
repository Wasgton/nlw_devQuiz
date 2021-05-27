import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/pages/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/shared/models/Question.dart';
import 'package:flutter/material.dart';


class QuizWidget extends StatefulWidget {
  final Question question;
  const QuizWidget({Key? key, required this.question}): super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  answers(int index)=>widget.question.answer[index];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 24),
            child: Text(
                widget.question.question,
              style: AppTextStyles.heading,
            ),
          ),
          for(var i = 0; i<widget.question.answer.length; i++)
            AnswerWidget(
              answer: answers(i),
              isSelected: indexSelected == i,
              onTap: (){
                indexSelected = i;
                setState(() {

                });
              },
            ),
        ],
      ),
    );
  }
}
