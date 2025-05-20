class QuizQuestions {
  const QuizQuestions(this.quests, this.ans);

  final String quests;
  final List<String> ans;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(ans);
    shuffledList.shuffle();
    return shuffledList;
  }
}