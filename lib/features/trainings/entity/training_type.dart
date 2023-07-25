enum Trainings {
  selectingWT._(TrainingType.selecting, TrainingMode.wt),
  selectingTW._(TrainingType.selecting, TrainingMode.tw),
  writingWT._(TrainingType.writing, TrainingMode.wt),
  writingTW._(TrainingType.writing, TrainingMode.tw);

  final TrainingType type;
  final TrainingMode mode;

  const Trainings._(
    this.type,
    this.mode,
  );
}

enum TrainingType {
  selecting,
  writing,
}

enum TrainingMode {
  wt,
  tw,
}
