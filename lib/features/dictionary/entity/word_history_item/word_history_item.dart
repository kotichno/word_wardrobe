import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_history_item.freezed.dart';
part 'word_history_item.g.dart';

@freezed
class WordHistoryItem with _$WordHistoryItem {
  factory WordHistoryItem({
    required bool wasCorrect,
    required DateTime createdAt,
  }) = _WordHistoryItem;

  factory WordHistoryItem.fromJson(Map<String, Object?> json) => _$WordHistoryItemFromJson(json);
}
