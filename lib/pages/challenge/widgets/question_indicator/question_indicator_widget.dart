import 'package:DevQuiz/shared/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:DevQuiz/core/core.dart';

class QuestionIndicatorWidget extends StatelessWidget {

  const QuestionIndicatorWidget({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Questão 04",
                style: AppTextStyles.body,
              ),
              Text(
                "de 10",
                style: AppTextStyles.body,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            child: ProgressIndicadorWidget(value: .3)
          )
        ],
      ),
    );
  }
}

