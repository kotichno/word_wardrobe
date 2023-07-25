// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'success_space_repetition_history_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuccessSpaceRepetitionHistoryItem _$SuccessSpaceRepetitionHistoryItemFromJson(
    Map<String, dynamic> json) {
  return _SuccessSpaceRepetitionHistoryItem.fromJson(json);
}

/// @nodoc
mixin _$SuccessSpaceRepetitionHistoryItem {
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessSpaceRepetitionHistoryItemCopyWith<SuccessSpaceRepetitionHistoryItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessSpaceRepetitionHistoryItemCopyWith<$Res> {
  factory $SuccessSpaceRepetitionHistoryItemCopyWith(
          SuccessSpaceRepetitionHistoryItem value,
          $Res Function(SuccessSpaceRepetitionHistoryItem) then) =
      _$SuccessSpaceRepetitionHistoryItemCopyWithImpl<$Res,
          SuccessSpaceRepetitionHistoryItem>;
  @useResult
  $Res call({DateTime createdAt});
}

/// @nodoc
class _$SuccessSpaceRepetitionHistoryItemCopyWithImpl<$Res,
        $Val extends SuccessSpaceRepetitionHistoryItem>
    implements $SuccessSpaceRepetitionHistoryItemCopyWith<$Res> {
  _$SuccessSpaceRepetitionHistoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SuccessSpaceRepetitionHistoryItemCopyWith<$Res>
    implements $SuccessSpaceRepetitionHistoryItemCopyWith<$Res> {
  factory _$$_SuccessSpaceRepetitionHistoryItemCopyWith(
          _$_SuccessSpaceRepetitionHistoryItem value,
          $Res Function(_$_SuccessSpaceRepetitionHistoryItem) then) =
      __$$_SuccessSpaceRepetitionHistoryItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createdAt});
}

/// @nodoc
class __$$_SuccessSpaceRepetitionHistoryItemCopyWithImpl<$Res>
    extends _$SuccessSpaceRepetitionHistoryItemCopyWithImpl<$Res,
        _$_SuccessSpaceRepetitionHistoryItem>
    implements _$$_SuccessSpaceRepetitionHistoryItemCopyWith<$Res> {
  __$$_SuccessSpaceRepetitionHistoryItemCopyWithImpl(
      _$_SuccessSpaceRepetitionHistoryItem _value,
      $Res Function(_$_SuccessSpaceRepetitionHistoryItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
  }) {
    return _then(_$_SuccessSpaceRepetitionHistoryItem(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuccessSpaceRepetitionHistoryItem
    implements _SuccessSpaceRepetitionHistoryItem {
  _$_SuccessSpaceRepetitionHistoryItem({required this.createdAt});

  factory _$_SuccessSpaceRepetitionHistoryItem.fromJson(
          Map<String, dynamic> json) =>
      _$$_SuccessSpaceRepetitionHistoryItemFromJson(json);

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'SuccessSpaceRepetitionHistoryItem(createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessSpaceRepetitionHistoryItem &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessSpaceRepetitionHistoryItemCopyWith<
          _$_SuccessSpaceRepetitionHistoryItem>
      get copyWith => __$$_SuccessSpaceRepetitionHistoryItemCopyWithImpl<
          _$_SuccessSpaceRepetitionHistoryItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuccessSpaceRepetitionHistoryItemToJson(
      this,
    );
  }
}

abstract class _SuccessSpaceRepetitionHistoryItem
    implements SuccessSpaceRepetitionHistoryItem {
  factory _SuccessSpaceRepetitionHistoryItem(
          {required final DateTime createdAt}) =
      _$_SuccessSpaceRepetitionHistoryItem;

  factory _SuccessSpaceRepetitionHistoryItem.fromJson(
          Map<String, dynamic> json) =
      _$_SuccessSpaceRepetitionHistoryItem.fromJson;

  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessSpaceRepetitionHistoryItemCopyWith<
          _$_SuccessSpaceRepetitionHistoryItem>
      get copyWith => throw _privateConstructorUsedError;
}
