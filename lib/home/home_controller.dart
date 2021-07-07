import 'package:app_quiz/core/app_images.dart';
import 'package:app_quiz/home/home_repository.dart';
import 'package:app_quiz/home/home_state.dart';
import 'package:app_quiz/shared/models/awnser_model.dart';
import 'package:app_quiz/shared/models/question_model.dart';
import 'package:app_quiz/shared/models/quiz_model.dart';
import 'package:app_quiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  ValueNotifier<HomeState> stateNotifier =
      ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = await repository.getUser();
    state = HomeState.sucess;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = await repository.getQuizzes();
    state = HomeState.sucess;
  }
}