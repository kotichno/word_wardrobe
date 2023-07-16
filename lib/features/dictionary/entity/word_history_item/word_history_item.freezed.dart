// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_history_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WordHistoryItem _$WordHistoryItemFromJson(Map<String, dynamic> json) {
  return _WordHistoryItem.fromJson(json);
}

/// @nodoc
mixin _$WordHistoryItem {
  bool get wasCorrect => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordHistoryItemCopyWith<WordHistoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordHistoryItemCopyWith<$Res> {
  factory $WordHistoryItemCopyWith(
          WordHistoryItem value, $Res Function(WordHistoryItem) then) =
      _$WordHistoryItemCopyWithImpl<$Res, WordHistoryItem>;
  @useResult
  $Res call({bool wasCorrect, DateTime createdAt});
}

/// @nodoc
class _$WordHistoryItemCopyWithImpl<$Res, $Val extends WordHistoryItem>
    implements $WordHistoryItemCopyWith<$Res> {
  _$WordHistoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wasCorrect = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      wasCorrect: null == wasCorrect
          ? _value.wasCorrect
          : wasCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WordHistoryItemCopyWith<$Res>
    implements $WordHistoryItemCopyWith<$Res> {
  factory _$$_WordHistoryItemCopyWith(
          _$_WordHistoryItem value, $Res Function(_$_WordHistoryItem) then) =
      __$$_WordHistoryItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool wasCorrect, DateTime createdAt});
}

/// @nodoc
class __$$_WordHistoryItemCopyWithImpl<$Res>
    extends _$WordHistoryItemCopyWithImpl<$Res, _$_WordHistoryItem>
    implements _$$_WordHistoryItemCopyWith<$Res> {
  __$$_WordHistoryItemCopyWithImpl(
      _$_WordHistoryItem _value, $Res Function(_$_WordHistoryItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wasCorrect = null,
    Object? createdAt = null,
  }) {
    return _then(_$_WordHistoryItem(
      wasCorrect: null == wasCorrect
          ? _value.wasCorrect
          : wasCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WordHistoryItem implements _WordHistoryItem {
  _$_WordHistoryItem({required this.wasCorrect, required this.createdAt});

  factory _$_WordHistoryItem.fromJson(Map<String, dynamic> json) =>
      _$$_WordHistoryItemFromJson(json);

  @override
  final bool wasCorrect;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'WordHistoryItem(wasCorrect: $wasCorrect, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordHistoryItem &&
            (identical(other.wasCorrect, wasCorrect) ||
                other.wasCorrect == wasCorrect) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, wasCorrect, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WordHistoryItemCopyWith<_$_WordHistoryItem> get copyWith =>
      __$$_WordHistoryItemCopyWithImpl<_$_WordHistoryItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WordHistoryItemToJson(
      this,
    );
  }
}

abstract class _WordHistoryItem implements WordHistoryItem {
  factory _WordHistoryItem(
      {required final bool wasCorrect,
      required final DateTime createdAt}) = _$_WordHistoryItem;

  factory _WordHistoryItem.fromJson(Map<String, dynamic> json) =
      _$_WordHistoryItem.fromJson;

  @override
  bool get wasCorrect;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_WordHistoryItemCopyWith<_$_WordHistoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}
