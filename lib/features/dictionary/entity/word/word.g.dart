// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Word _$$_WordFromJson(Map<String, dynamic> json) => _$_Word(
      id: json['id'] as String,
      word: json['word'] as String,
      translation: json['translation'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      history: (json['history'] as List<dynamic>)
          .map((e) => WordHistoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      language: json['language'] as String,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_WordToJson(_$_Word instance) => <String, dynamic>{
      'id': instance.id,
      'word': instance.word,
      'translation': instance.translation,
      'createdAt': instance.createdAt.toIso8601String(),
      'history': instance.history,
      'language': instance.language,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
