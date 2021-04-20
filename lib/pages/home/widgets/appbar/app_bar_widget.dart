import 'package:DevQuiz/pages/home/widgets/scorecard/score_card_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget(): super(
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
                                text: "Dev",
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
                           image: NetworkImage("https://media.gazetadopovo.com.br/viver-bem/2018/11/dog3-768x587-0e01be20.jpg"),
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
