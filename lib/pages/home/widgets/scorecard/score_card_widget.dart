import 'package:DevQuiz/pages/home/widgets/chart/chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:DevQuiz/core/core.dart';

class ScoreCardWidget extends StatelessWidget {

  const ScoreCardWidget({Key?key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 14),
      child: Container(
      height: 136,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                  child: ChartWidget()
              )
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(left: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text("Vamos começar", style: AppTextStyles.heading,),
                      Text("Complete os desafios e avance em conhecimento", style: AppTextStyles.body,)
                  ],
                )
              )
            ),
          ],
        ),
      ),
    ),
    );
  }
}
