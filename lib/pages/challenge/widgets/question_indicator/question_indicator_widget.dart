import 'package:DevQuiz/shared/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:DevQuiz/core/core.dart';

class QuestionIndicatorWidget extends StatelessWidget {

  final int currentPage;
  final int length;

  const QuestionIndicatorWidget({Key? key, required this.currentPage, required this.length}) :super(key: key);

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
                "Questão ${currentPage}",
                style: AppTextStyles.body,
              ),
              Text(
                "de ${length}",
                style: AppTextStyles.body,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            child: ProgressIndicadorWidget(value: currentPage/length)
          )
        ],
      ),
    );
  }
}

