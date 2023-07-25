import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_space_repetition_history_item.freezed.dart';
part 'success_space_repetition_history_item.g.dart';

@freezed
class SuccessSpaceRepetitionHistoryItem with _$SuccessSpaceRepetitionHistoryItem {
  factory SuccessSpaceRepetitionHistoryItem({
    required DateTime createdAt,
  }) = _SuccessSpaceRepetitionHistoryItem;

  factory SuccessSpaceRepetitionHistoryItem.fromJson(Map<String, Object?> json) =>
      _$SuccessSpaceRepetitionHistoryItemFromJson(json);
}
