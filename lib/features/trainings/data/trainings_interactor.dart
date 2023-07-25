import 'package:flutter/foundation.dart';
import 'package:word_wardrobe/common/utils/extensions.dart';
import 'package:word_wardrobe/common/utils/utils.dart';
import 'package:word_wardrobe/features/dictionary/data/dictionary_interactor.dart';
import 'package:word_wardrobe/features/dictionary/entity/word/word.dart';
import 'package:word_wardrobe/features/trainings/data/training_config.dart';

class TrainingsInteractor {
  final DictionaryInteractor _dictionaryInteractor;

  TrainingsInteractor(this._dictionaryInteractor);

  Future<Map<DateTime, List<Word>>> getTrainingWords() async {
    final words = await _dictionaryInteractor.words.single;
    final result = <DateTime, List<Word>>{};

    for (final word in words) {
      if (word.history.length >= TrainingConfig.trainingSpaces.length) continue;

      final trainingTime = getWordTrainingTime(word).makeHoursRound();
      if (result[trainingTime] == null) {
        result[trainingTime] = [word];
      } else {
        result[trainingTime]?.add(word);
      }
    }

    return result;
  }

  @visibleForTesting
  DateTime getWordTrainingTime(Word word) {
    final hasTrained = word.history.isNotEmpty;
    if (hasTrained) {
      final shouldNotTrainWord = word.history.length >= TrainingConfig.trainingSpaces.length;
      if (shouldNotTrainWord) {
        throw Exception('Word is known');
      } else {
        final history = word.history.toList();
        history.sort((a, b) => a.createdAt.compareTo(b.createdAt));
        final lastTrainingTime = history.last.createdAt;
        final nextTrainingTime = lastTrainingTime.add(
          TrainingConfig.trainingSpaces[word.history.length],
        );
        if (nextTrainingTime.isBefore(now)) {
          return now;
        } else {
          return nextTrainingTime;
        }
      }
    } else {
      final firstTrainingTime = word.createdAt.add(TrainingConfig.trainingSpaces.first);

      if (firstTrainingTime.isBefore(now)) {
        return now;
      } else {
        return firstTrainingTime;
      }
    }
  }
}
