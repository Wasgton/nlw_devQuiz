import 'package:DevQuiz/pages/home/HomeController.dart';
import 'package:DevQuiz/pages/home/HomeState.dart';
import 'package:DevQuiz/pages/home/widgets/appbar/app_bar_widget.dart';
import 'package:DevQuiz/pages/home/widgets/level_button/level_button_widget.dart';
import 'package:DevQuiz/pages/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:DevQuiz/pages/splash/splash.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  @override
  void initState() {
    super.initState();

    controller.getUser();
    controller.getQuizzes();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {

    if(controller.state==HomeState.success) {
      return Scaffold(
        appBar: AppBarWidget(user: controller.user!),
        body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 24),
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
                    children: controller.quizzes!.map((e) =>
                        QuizCardWidget(
                          title: e.title,
                          completed: "${e.answered} de ${e.questions.length}",
                          percent: e.answered / e.questions.length,
                        )).toList()
                ),
              ),
            ]
        ),
      );
    }else{
      return SplashPage();
    }

  }
}
