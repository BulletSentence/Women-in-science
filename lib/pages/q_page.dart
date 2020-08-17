import 'dart:math';

import 'package:httprequestapp/models/question.dart';

class QuizController {
  List<Question> _questionBank;

  Random _random = new Random();
  int questionIndex = 0;
  bool _shiftAnswer;
  int hitNumber = 0;

}