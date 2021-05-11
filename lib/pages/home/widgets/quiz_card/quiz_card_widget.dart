import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/pages/challenge/challenge_page.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:DevQuiz/core/app_colors.dart';

class QuizCardWidget extends StatelessWidget {

  final String title;
  final String completed;
  final double percent;

  const QuizCardWidget({Key?key,required this.title, required this.completed, required this.percent}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 6),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(color: AppColors.border),),
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 24),
              child: Image.asset(AppImages.blocks),
              alignment: Alignment.topLeft,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 24),
              child: Text(
                title,
                style: AppTextStyles.heading15,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    completed,
                    style: AppTextStyles.body11,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: ProgressIndicadorWidget(value:percent)
                )
              ],
            )
          ],
        ),
      ),
      onTap: ()=>{
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ChallengePage()))
      },
    );
  }
}
