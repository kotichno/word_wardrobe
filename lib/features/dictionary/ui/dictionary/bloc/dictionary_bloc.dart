import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:word_wardrobe/features/dictionary/data/dictionary_interactor.dart';
import 'package:word_wardrobe/features/dictionary/entity/word/word.dart';

part 'dictionary_event.dart';
part 'dictionary_state.dart';
part 'dictionary_bloc.freezed.dart';

class DictionaryBloc extends Bloc<DictionaryEvent, DictionaryState> {
  final DictionaryInteractor _dictionaryInteractor;
  StreamSubscription<List<Word>>? streamSubscription;

  DictionaryBloc({
    required DictionaryInteractor dictionaryInteractor,
  })  : _dictionaryInteractor = dictionaryInteractor,
        super(const _Words(words: [])) {
    on<DictionaryEvent>((event, emit) async {
      await event.when(removeWord: (word) => _removeWord(word, emit));
    });

    streamSubscription = _dictionaryInteractor.words.listen((words) {
      // ignore: invalid_use_of_visible_for_testing_member
      emit(_Words(words: words));
    });
  }

  Future<void> _removeWord(Word word, Emitter<DictionaryState> emit) async {
    _dictionaryInteractor.removeWord(word);
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();

    return super.close();
  }
}
