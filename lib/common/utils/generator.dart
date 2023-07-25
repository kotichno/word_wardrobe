import 'package:word_wardrobe/common/utils/const.dart';
import 'package:word_wardrobe/common/utils/utils.dart';
import 'package:word_wardrobe/features/dictionary/entity/success_space_repetition_history_item/success_space_repetition_history_item.dart';
import 'package:word_wardrobe/features/dictionary/entity/word/word.dart';

class Generator {
  Generator._();

  static Word generateWord({
    String id = 'id',
    String word = 'word',
    String translation = 'translation',
    DateTime? createdAt,
    List<SuccessSpaceRepetitionHistoryItem> history = const [],
    String language = Const.languageName,
    DateTime? updatedAt,
  }) {
    return Word(
      id: id,
      word: word,
      translation: translation,
      createdAt: createdAt ?? now,
      history: history,
      language: language,
      updatedAt: updatedAt,
    );
  }

  static List<Word> generateWords(int count,{
    DateTime? createdAt,
  }) {
    return List.generate(
      count,
      (index) => generateWord(
        id: index.toString(),
        word: 'word$index',
        translation: 'translation$index',
        createdAt: createdAt,
      ),
    );
  }
}
