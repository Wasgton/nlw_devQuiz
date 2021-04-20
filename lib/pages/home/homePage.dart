import 'package:DevQuiz/pages/challenge/challenge_page.dart';
import 'package:DevQuiz/pages/home/widgets/appbar/app_bar_widget.dart';
import 'package:DevQuiz/pages/home/widgets/level_button/level_button_widget.dart';
import 'package:DevQuiz/pages/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:DevQuiz/core/core.dart';

class HomePage extends StatefulWidget {

  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20,bottom: 24),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LevelButtonWidget(label: "Fácil",),
                  LevelButtonWidget(label: "Médio",),
                  LevelButtonWidget(label: "Difícil",),
                  LevelButtonWidget(label: "Perito",),
                ],
              ),
            ),
          ),
          Expanded(            
              child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  mainAxisSpacing: 12,
                  children:[
                    QuizCardWidget(),
                    QuizCardWidget(),
                    QuizCardWidget(),
                    QuizCardWidget(),
                    QuizCardWidget(),
                    QuizCardWidget(),
                    QuizCardWidget(),
                  ]
              )
          ),
      ]
      ),
    );
  }
}
