part of 'dictionary_bloc.dart';

@freezed
class DictionaryState with _$DictionaryState {
  const factory DictionaryState.words({
    required List<Word> words,
  }) = _Words;
}
