import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:word_wardrobe/features/dictionary/entity/word/word.dart';

const _storageFileName = 'dictionary.json';

// TODO(me): make work with json async
@singleton
class DictionaryStorage {
  late final Directory _directory;
  late final File _file;
  final List<Word> _words = [];

  @FactoryMethod(preResolve: true)
  static Future<DictionaryStorage> create() async {
    final storage = DictionaryStorage();
    await storage.init();
    return storage;
  }

  Future<void> init() async {
    _directory = await getApplicationSupportDirectory();
    _file = File('${_directory.path}/$_storageFileName');

    if (_file.existsSync()) {
      _loadWords();
    } else {
      _file.createSync();
    }
  }

  void addWord(Word word) {
    _words.add(word);

    _saveWords();
  }

  void updateWord(Word word) {
    final index = _words.indexWhere((element) => element.id == word.id);
    _words[index] = word;

    _saveWords();
  }

  void removeWord(Word word) {
    _words.removeWhere((element) => element.id == word.id);

    _saveWords();
  }

  List<Word> getAllWords() {
    final words = [..._words];
    // TODO(me): remove sort
    words.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return words;
  }

  void _loadWords() {
    final fileContent = _file.readAsStringSync();
    if (fileContent.isEmpty) return;
    final List<Object?> json = jsonDecode(fileContent);
    // ignore: cast_nullable_to_non_nullable
    final words = json.map((i) => Word.fromJson(i as Map<String, Object?>));

    _words.addAll(words);
  }

  void _saveWords() {
    final json = _words.map((e) => e.toJson()).toList();
    final fileContent = jsonEncode(json);

    _file.writeAsStringSync(fileContent);
  }
}
