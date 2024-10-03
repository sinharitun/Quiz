class QuizQuestion{
  //constructor function take argument from calling function
  const QuizQuestion(this.text,this.answer);

  final String text;
  final List<String> answer;

  List<String> getShuffledAnswer()
  {
    final shuffledAnswer=List.of(answer);
    shuffledAnswer.shuffle();
    return shuffledAnswer;
  }
}