// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DictionaryEvent {
  Word get word => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Word word) removeWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Word word)? removeWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Word word)? removeWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoveWord value) removeWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveWord value)? removeWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveWord value)? removeWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DictionaryEventCopyWith<DictionaryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryEventCopyWith<$Res> {
  factory $DictionaryEventCopyWith(
          DictionaryEvent value, $Res Function(DictionaryEvent) then) =
      _$DictionaryEventCopyWithImpl<$Res, DictionaryEvent>;
  @useResult
  $Res call({Word word});

  $WordCopyWith<$Res> get word;
}

/// @nodoc
class _$DictionaryEventCopyWithImpl<$Res, $Val extends DictionaryEvent>
    implements $DictionaryEventCopyWith<$Res> {
  _$DictionaryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as Word,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WordCopyWith<$Res> get word {
    return $WordCopyWith<$Res>(_value.word, (value) {
      return _then(_value.copyWith(word: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RemoveWordCopyWith<$Res>
    implements $DictionaryEventCopyWith<$Res> {
  factory _$$_RemoveWordCopyWith(
          _$_RemoveWord value, $Res Function(_$_RemoveWord) then) =
      __$$_RemoveWordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Word word});

  @override
  $WordCopyWith<$Res> get word;
}

/// @nodoc
class __$$_RemoveWordCopyWithImpl<$Res>
    extends _$DictionaryEventCopyWithImpl<$Res, _$_RemoveWord>
    implements _$$_RemoveWordCopyWith<$Res> {
  __$$_RemoveWordCopyWithImpl(
      _$_RemoveWord _value, $Res Function(_$_RemoveWord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_$_RemoveWord(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as Word,
    ));
  }
}

/// @nodoc

class _$_RemoveWord implements _RemoveWord {
  const _$_RemoveWord({required this.word});

  @override
  final Word word;

  @override
  String toString() {
    return 'DictionaryEvent.removeWord(word: $word)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveWord &&
            (identical(other.word, word) || other.word == word));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveWordCopyWith<_$_RemoveWord> get copyWith =>
      __$$_RemoveWordCopyWithImpl<_$_RemoveWord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Word word) removeWord,
  }) {
    return removeWord(word);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Word word)? removeWord,
  }) {
    return removeWord?.call(word);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Word word)? removeWord,
    required TResult orElse(),
  }) {
    if (removeWord != null) {
      return removeWord(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoveWord value) removeWord,
  }) {
    return removeWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveWord value)? removeWord,
  }) {
    return removeWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveWord value)? removeWord,
    required TResult orElse(),
  }) {
    if (removeWord != null) {
      return removeWord(this);
    }
    return orElse();
  }
}

abstract class _RemoveWord implements DictionaryEvent {
  const factory _RemoveWord({required final Word word}) = _$_RemoveWord;

  @override
  Word get word;
  @override
  @JsonKey(ignore: true)
  _$$_RemoveWordCopyWith<_$_RemoveWord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DictionaryState {
  List<Word> get words => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Word> words) words,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Word> words)? words,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Word> words)? words,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Words value) words,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Words value)? words,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Words value)? words,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DictionaryStateCopyWith<DictionaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryStateCopyWith<$Res> {
  factory $DictionaryStateCopyWith(
          DictionaryState value, $Res Function(DictionaryState) then) =
      _$DictionaryStateCopyWithImpl<$Res, DictionaryState>;
  @useResult
  $Res call({List<Word> words});
}

/// @nodoc
class _$DictionaryStateCopyWithImpl<$Res, $Val extends DictionaryState>
    implements $DictionaryStateCopyWith<$Res> {
  _$DictionaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_value.copyWith(
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Word>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WordsCopyWith<$Res>
    implements $DictionaryStateCopyWith<$Res> {
  factory _$$_WordsCopyWith(_$_Words value, $Res Function(_$_Words) then) =
      __$$_WordsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Word> words});
}

/// @nodoc
class __$$_WordsCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$_Words>
    implements _$$_WordsCopyWith<$Res> {
  __$$_WordsCopyWithImpl(_$_Words _value, $Res Function(_$_Words) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_$_Words(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Word>,
    ));
  }
}

/// @nodoc

class _$_Words implements _Words {
  const _$_Words({required final List<Word> words}) : _words = words;

  final List<Word> _words;
  @override
  List<Word> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  String toString() {
    return 'DictionaryState.words(words: $words)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Words &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WordsCopyWith<_$_Words> get copyWith =>
      __$$_WordsCopyWithImpl<_$_Words>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Word> words) words,
  }) {
    return words(this.words);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Word> words)? words,
  }) {
    return words?.call(this.words);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Word> words)? words,
    required TResult orElse(),
  }) {
    if (words != null) {
      return words(this.words);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Words value) words,
  }) {
    return words(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Words value)? words,
  }) {
    return words?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Words value)? words,
    required TResult orElse(),
  }) {
    if (words != null) {
      return words(this);
    }
    return orElse();
  }
}

abstract class _Words implements DictionaryState {
  const factory _Words({required final List<Word> words}) = _$_Words;

  @override
  List<Word> get words;
  @override
  @JsonKey(ignore: true)
  _$$_WordsCopyWith<_$_Words> get copyWith =>
      throw _privateConstructorUsedError;
}
