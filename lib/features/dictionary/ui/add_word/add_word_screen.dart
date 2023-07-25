import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:word_wardrobe/common/di/di.dart';
import 'package:word_wardrobe/features/dictionary/data/dictionary_interactor.dart';
import 'package:word_wardrobe/features/dictionary/ui/add_word/bloc/add_word_bloc.dart';

class AddWordScreen extends StatelessWidget {
  const AddWordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddWordBloc(dictionaryInteractor: getIt<DictionaryInteractor>()),
      child: _AddWordView(),
    );
  }
}

class _AddWordView extends StatelessWidget {
  final wordTextController = TextEditingController();
  final translationTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Word')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Word', style: Theme.of(context).textTheme.titleLarge),
            TextField(controller: wordTextController),
            const SizedBox(height: 16),
            Text('Translation', style: Theme.of(context).textTheme.titleLarge),
            TextField(controller: translationTextController),
            const SizedBox(height: 32),
            ElevatedButton(onPressed: () => _addWord(context), child: const Text('Add Word'))
          ],
        ),
      ),
    );
  }

  void _addWord(BuildContext context) {
    final word = wordTextController.text;
    final translation = translationTextController.text;
    context.read<AddWordBloc>().add(AddWordEvent.addWord(word: word, translation: translation));
  }
}
