import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/pages/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/shared/models/Question.dart';
import 'package:flutter/material.dart';


class QuizWidget extends StatelessWidget {
  final Question question;
  const QuizWidget({Key? key, required this.question}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 24),
            child: Text(
                question.question,
              style: AppTextStyles.heading,
            ),
          ),
          ...question.answer
              .map(
                (e) => AnswerWidget(
                isRight: e.isRight,
                title: e.title
              ),
          ).toList()
        ],
      ),
    );
  }
}
