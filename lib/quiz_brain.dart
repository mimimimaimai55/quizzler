import 'question.dart';

class QuizBrain{
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: '1:青信号は止まれ', a: false),
    Question(q: '2:赤信号は止まれ', a: true),
    Question(q: '3:青信号は進め', a: true),
    Question(q: '4:青信号は止まれ', a: false),
    Question(q: '5:赤信号は止まれ', a: true),
    Question(q: '6:青信号は進め', a: true),
    Question(q: '7:青信号は止まれ', a: false),
    Question(q: '8:赤信号は止まれ', a: true),
    Question(q: '9:青信号は進め', a: true),
    Question(q: '10:青信号は止まれ', a: false),
    Question(q: '11:赤信号は止まれ', a: true),
    Question(q: '12:青信号は進め', a: true),
    Question(q: '13:青信号は止まれ', a: false),
  ];

  void nextQuestion(){
    if (_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

String getQuestionText(int questionNumber){
  return _questionBank[_questionNumber].questionText;
}

bool getCorrectAnswer(int questionNumber){
  return _questionBank[_questionNumber].questionAnswer;
}
}