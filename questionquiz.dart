class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getshuffeled() {
    final shuffeledlist = List.of(answers);
    shuffeledlist.shuffle();
    return shuffeledlist;
  }
}
