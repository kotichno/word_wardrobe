import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:word_wardrobe/common/utils/utils.dart';
import 'package:word_wardrobe/features/dictionary/data/dictionary_interactor.dart';
import 'package:word_wardrobe/features/dictionary/entity/word/word.dart';

part 'add_word_event.dart';
part 'add_word_state.dart';
part 'add_word_bloc.freezed.dart';

const _uuid = Uuid();

class AddWordBloc extends Bloc<AddWordEvent, AddWordState> {
  final DictionaryInteractor _dictionaryInteractor;

  AddWordBloc({
    required DictionaryInteractor dictionaryInteractor,
  })  : _dictionaryInteractor = dictionaryInteractor,
        super(const _Initial()) {
    on<AddWordEvent>((event, emit) async {
      await event.when(addWord: (word, translation) => _addWord(word, translation, emit));
    });
  }

  Future<void> _addWord(
    String word,
    String translation,
    Emitter<AddWordState> emit,
  ) async {
    _dictionaryInteractor.addWord(Word(
      id: _uuid.v4(),
      word: word,
      translation: translation,
      createdAt: now,
      history: [],
      language: 'de',
    ),);
  }
}
