import 'dart:math';

import 'package:httprequestapp/models/question.dart';
import 'package:httprequestapp/services/q_api.dart';

class QuizController {
  List<Question> _questionBank;

  Random _random = new Random();
  int questionIndex = 0;
  bool _shiftAnswer;
  int hitNumber = 0;

  int get questionsNumber => _questionBank.length ?? 0;
  Question get question => _questionBank[questionIndex];

  Future<void> initialize() async {
    questionIndex = 0;
    hitNumber = 0;
    _questionBank = await Q_API.fetch();
    print('Number of questions :${_questionBank.length}');
    _questionBank.shuffle();
    _shiftAnswer = _random.nextBool();
  }

  void nextQuestion(){
    questionIndex = ++questionIndex % _questionBank.length;
    _shiftAnswer = _random.nextBool();
  }

  String getQuestion() {
    return _questionBank[questionIndex].question;
  }

  String getAnswer1() {
    return _shiftAnswer ? _questionBank[questionIndex].answer1 : _questionBank[questionIndex].answer2;
  }
}