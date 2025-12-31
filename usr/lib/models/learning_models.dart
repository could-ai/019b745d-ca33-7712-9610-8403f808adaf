class LearningModule {
  final String id;
  final String title;
  final String description;
  final IconData icon;
  final List<Lesson> lessons;

  const LearningModule({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.lessons,
  });
}

class Lesson {
  final String title;
  final String content;
  final List<String> keyPoints;

  const Lesson({
    required this.title,
    required this.content,
    required this.keyPoints,
  });
}

class Scenario {
  final String title;
  final String difficulty;
  final String description;
  final List<String> steps;
  final String goal;

  const Scenario({
    required this.title,
    required this.difficulty,
    required this.description,
    required this.steps,
    required this.goal,
  });
}
