// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_history_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WordHistoryItem _$$_WordHistoryItemFromJson(Map<String, dynamic> json) =>
    _$_WordHistoryItem(
      wasCorrect: json['wasCorrect'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_WordHistoryItemToJson(_$_WordHistoryItem instance) =>
    <String, dynamic>{
      'wasCorrect': instance.wasCorrect,
      'createdAt': instance.createdAt.toIso8601String(),
    };
