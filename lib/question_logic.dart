import 'package:quiz_app/question.dart';

class QuestionLogic {
  int _questionNumber = 0;

  List<Question> _questionList = [
    Question('Makanan dengan tangan kanan', true),
    Question('mengambil sendal orang lain', false),
    Question('makan dengan tangan kiri', false),
    Question('memakai sendal dengan kaki kiri', false),
    Question('apakah boleh qurban', true),
    Question('Apakah semut besar', false),
    Question('apakah ular bertelor', true),
    Question('apakah ayam bisa jalan', true),
    Question('apakah aldi gendut', true),
    Question('apakah ambulance di perioritaskan waktu membawa pasien', true)
  ];

  String getQuestion() => _questionList[_questionNumber].question;

  int getQuestionNumberText() => _questionNumber + 1;

  int getTotalQuestion() => _questionList.length;

  bool getCorrectAnswer() => _questionList[_questionNumber].answer;

  void nextQuestion() {
    if (_questionNumber < _questionList.length - 1) {
      _questionNumber++;
      print(_questionNumber);
    }
  }

  bool isFinised() {
    if (_questionNumber >= _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void resetQuestion() => _questionNumber = 0;
}
