import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';


class QuizWidget extends StatelessWidget {

  final String title;
  const QuizWidget({Key? key, required this.title}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 24),
            child: Text(
                title,
              style: AppTextStyles.heading,
            ),
          )
        ],
      ),
    );
  }
}