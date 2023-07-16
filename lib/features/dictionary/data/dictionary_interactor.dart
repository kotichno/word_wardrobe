import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';
import 'package:word_wardrobe/features/dictionary/data/dictionary_storage.dart';
import 'package:word_wardrobe/features/dictionary/entity/word/word.dart';

@singleton
class DictionaryInteractor {
  final DictionaryStorage _storage;

  DictionaryInteractor(this._storage) {
    _sendWordsToStream();
  }

  final _wordsSubject = BehaviorSubject<List<Word>>();
  Stream<List<Word>> get words => _wordsSubject;

  void addWord(Word word) {
    _storage.addWord(word);

    _sendWordsToStream();
  }

  void updateWord(Word word) {
    _storage.updateWord(word);

    _sendWordsToStream();
  }

  void removeWord(Word word) {
    _storage.removeWord(word);

    _sendWordsToStream();
  }

  @disposeMethod
  void dispose() {
    _wordsSubject.close();
  }

  void _sendWordsToStream() {
    final words = _storage.getAllWords();
    _wordsSubject.add(words);
  }
}
