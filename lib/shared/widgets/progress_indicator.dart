import 'package:flutter/material.dart';
import 'package:DevQuiz/core/core.dart';

class ProgressIndicadorWidget extends StatelessWidget {

  final double value;
  const ProgressIndicadorWidget({Key? key, required this.value}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value:value,
      backgroundColor: AppColors.chartSecondary,
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
    );
  }
}
