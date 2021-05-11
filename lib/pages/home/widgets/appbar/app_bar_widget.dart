import 'package:DevQuiz/pages/home/widgets/scorecard/score_card_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/models/User.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {

  final User user;

  AppBarWidget({required this.user}): super(
    preferredSize: Size.fromHeight(250),
      child:Container(
        height: 250,
        child: Stack(
          children:[
            Container(
              height: 161,
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  gradient: AppGradients.linear
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                      TextSpan(
                          text:"Olá, ",
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                                text: user.nome,
                                style: AppTextStyles.titleBold
                            )
                          ]
                      )
                  ),
                  Container(
                    height: 58,
                    width: 58,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                           image: NetworkImage(user.photoUrl),
                        )
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment(0.0,1.0),
              child: ScoreCardWidget(),
            )
          ]
        )
    )
  );
}
