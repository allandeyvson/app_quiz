import 'package:app_quiz/challenge/widgets/awnswer/awnser_widget.dart';
import 'package:app_quiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AwnserWidget(
              isRight: true,
              isSelected: true,
              title: "Possibilita a criação de sistemas complexos"),
          AwnserWidget(title: "Possibilita a criação de sistemas complexos"),
          AwnserWidget(title: "Possibilita a criação de sistemas complexos"),
          AwnserWidget(title: "Possibilita a criação de sistemas complexos")
        ],
      ),
    );
  }
}
