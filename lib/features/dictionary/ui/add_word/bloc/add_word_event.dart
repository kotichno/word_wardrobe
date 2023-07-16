part of 'add_word_bloc.dart';

@freezed
class AddWordEvent with _$AddWordEvent {
  const factory AddWordEvent.addWord({
    required String word,
    required String translation,
  }) = _AddWord;
}
