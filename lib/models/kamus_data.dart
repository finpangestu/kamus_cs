class KamusData {
  int id;
  String question;
  String answer;

  KamusData({this.id, this.question, this.answer});

  KamusData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    answer = json['answer'];
  }
}
