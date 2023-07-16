import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:word_wardrobe/features/dictionary/entity/word_history_item/word_history_item.dart';

part 'word.freezed.dart';
part 'word.g.dart';

@freezed
class Word with _$Word {
  factory Word({
    required String id,
    required String word,
    required String translation,
    required DateTime createdAt,
    required List<WordHistoryItem> history,
    required String language,
    DateTime? updatedAt,
  }) = _Word;

  factory Word.fromJson(Map<String, Object?> json) => _$WordFromJson(json);
}
