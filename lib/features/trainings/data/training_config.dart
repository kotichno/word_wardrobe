class TrainingConfig {
  static const Duration minRestTime = Duration(hours: 1);

  static const trainingSpaces = [
    Duration.zero,
    Duration(hours: 1),
    Duration(hours: 8),
    Duration(days: 1),
    Duration(days: 2),
    Duration(days: 3),
    Duration(days: 5),
    Duration(days: 7),
    Duration(days: 10),
    Duration(days: 14),
    Duration(days: 21),
    Duration(days: 30),
  ];
  
  TrainingConfig._();
}
