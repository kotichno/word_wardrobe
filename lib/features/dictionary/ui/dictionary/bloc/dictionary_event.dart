part of 'dictionary_bloc.dart';

@freezed
class DictionaryEvent with _$DictionaryEvent {
  const factory DictionaryEvent.removeWord({
    required Word word,
  }) = _RemoveWord;
}
