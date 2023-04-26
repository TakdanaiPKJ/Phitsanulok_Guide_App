class QQuestion {
  final String qqtitle;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  QQuestion({
    required this.qqtitle,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;
  const Option({
    required this.text,
    required this.isCorrect,
  });
}

final questions = [
  QQuestion(qqtitle: '2+2=?', options: [
    const Option(text: '1', isCorrect: false),
    const Option(text: '2', isCorrect: false),
    const Option(text: '3', isCorrect: false),
    const Option(text: '4', isCorrect: true),
  ])
];
