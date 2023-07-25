import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:word_wardrobe/common/utils/generator.dart';
import 'package:word_wardrobe/common/utils/utils.dart';
import 'package:word_wardrobe/features/dictionary/data/dictionary_interactor.dart';
import 'package:word_wardrobe/features/dictionary/entity/success_space_repetition_history_item/success_space_repetition_history_item.dart';
import 'package:word_wardrobe/features/trainings/data/training_config.dart';
import 'package:word_wardrobe/features/trainings/data/trainings_interactor.dart';

import '../../../mocks.dart';

void main() {
  late DictionaryInteractor dictionaryInteractor;
  late TrainingsInteractor trainingsInteractor;

  setUpAll(() {
    overrideNowDateTime(DateTime(2023, DateTime.april));
  });

  setUp(() {
    dictionaryInteractor = MockDictionaryInteractor();
    trainingsInteractor = TrainingsInteractor(dictionaryInteractor);
  });

  group('Test TrainingsInteractor.getTrainingWords() method', () {
    test('There is no words', () async {
      when(() => dictionaryInteractor.words).thenAnswer((_) => Stream.value([]));

      expect(await trainingsInteractor.getTrainingWords(), isEmpty);
    });

    test('There is known word', () async {
      final words = List.generate(3, (index) {
        return Generator.generateWord(
          history: TrainingConfig.trainingSpaces
              .map((d) => SuccessSpaceRepetitionHistoryItem(createdAt: now.add(d)))
              .toList(),
        );
      });

      when(() => dictionaryInteractor.words).thenAnswer((_) => Stream.value(words));
      expect(await trainingsInteractor.getTrainingWords(), isEmpty);
    });
  });

  group('Test TrainingsInteractor.getWordTrainingTime() method', () {
    test('Not trained word. Training time is passed', () {
      final word = Generator.generateWord(
        createdAt: now.add(Duration(seconds: -TrainingConfig.trainingSpaces.first.inSeconds - 1)),
      );

      final actualResult = trainingsInteractor.getWordTrainingTime(word);

      expect(actualResult, equals(now));
    });

    test('Not trained word. Training time is not passed', () {
      const diffSeconds = 5;
      final word = Generator.generateWord(
        createdAt: now.add(
          Duration(seconds: -TrainingConfig.trainingSpaces.first.inSeconds + diffSeconds),
        ),
      );

      final actualResult = trainingsInteractor.getWordTrainingTime(word);

      expect(actualResult, equals(now.add(const Duration(seconds: diffSeconds))));
    });

    test('The word has already trained. Training time is passed', () {
      final word = Generator.generateWord(
        history: [
          SuccessSpaceRepetitionHistoryItem(createdAt: DateTime(2000)),
          SuccessSpaceRepetitionHistoryItem(
            createdAt: now.add(
              Duration(seconds: -TrainingConfig.trainingSpaces[2].inSeconds - 1),
            ),
          ),
        ],
      );

      final actualResult = trainingsInteractor.getWordTrainingTime(word);

      expect(actualResult, equals(now));
    });

    test('The word has already trained. Training time is not passed', () {
      const diffSeconds = 5;
      final word = Generator.generateWord(
        history: [
          SuccessSpaceRepetitionHistoryItem(createdAt: DateTime(2000)),
          SuccessSpaceRepetitionHistoryItem(
            createdAt: now.add(
              Duration(seconds: -TrainingConfig.trainingSpaces[2].inSeconds + diffSeconds),
            ),
          ),
        ],
      );

      final actualResult = trainingsInteractor.getWordTrainingTime(word);

      expect(actualResult, equals(now.add(const Duration(seconds: diffSeconds))));
    });

    test('The word already known', () {
      final word = Generator.generateWord(
        history: TrainingConfig.trainingSpaces
            .map((d) => SuccessSpaceRepetitionHistoryItem(createdAt: now.add(d)))
            .toList(),
      );

      expect(() => trainingsInteractor.getWordTrainingTime(word), throwsException);
    });
  });
}
