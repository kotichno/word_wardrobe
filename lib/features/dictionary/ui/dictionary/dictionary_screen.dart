import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:word_wardrobe/common/di/di.dart';
import 'package:word_wardrobe/features/dictionary/data/dictionary_interactor.dart';
import 'package:word_wardrobe/features/dictionary/ui/dictionary/bloc/dictionary_bloc.dart';

// TODO(me): Add empty state

class DictionaryScreen extends StatelessWidget {
  const DictionaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DictionaryBloc(
        dictionaryInteractor: getIt<DictionaryInteractor>(),
      ),
      child: const _DictionaryView(),
    );
  }
}

class _DictionaryView extends StatefulWidget {
  const _DictionaryView();

  @override
  State<_DictionaryView> createState() => _DictionaryViewState();
}

class _DictionaryViewState extends State<_DictionaryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DictionaryBloc, DictionaryState>(
        builder: (context, state) {
          if (state.words.isEmpty) {
            return const Center(
              child: Text('No words yet'),
            );
          }

          return ListView.builder(
            itemCount: state.words.length,
            itemBuilder: (context, index) {
              final word = state.words[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  key: ValueKey(word.id),
                  title: Text(word.word),
                  subtitle: Text(word.translation),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      context.read<DictionaryBloc>().add(DictionaryEvent.removeWord(word: word));
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
