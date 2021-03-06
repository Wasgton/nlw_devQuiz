import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/models/Answer.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {

  final Answer answer;
  final bool isSelected;
  final VoidCallback onTap;

  const AnswerWidget({
        Key? key,
        required this.answer,
        required this.onTap,
        this.isSelected = false,
  }):super(key:key);

  Color get _selectedColorRight =>
      answer.isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      answer.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      answer.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      answer.isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      answer.isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => answer.isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isSelected ? _selectedColorCardRight: AppColors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(BorderSide(
                  color:isSelected ? _selectedBorderCardRight : AppColors.border
              )
            ),
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Text(answer.title,style: isSelected ? _selectedTextStyleRight : AppTextStyles.body,)
              ),
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  color: isSelected ? _selectedColorRight : null,
                  borderRadius: BorderRadius.circular(500),
                  border: Border.fromBorderSide(
                      BorderSide(color:isSelected ? _selectedBorderRight : AppColors.border)
                  )
                ),
                child: Icon(isSelected ? _selectedIconRight : null , size: 20,color: Colors.white,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
