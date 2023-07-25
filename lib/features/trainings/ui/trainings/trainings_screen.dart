import 'package:flutter/material.dart';
import 'package:word_wardrobe/common/navigation/navigation.dart';
import 'package:word_wardrobe/features/trainings/entity/training_type.dart';

class TrainingsScreen extends StatelessWidget {
  const TrainingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _TrainingCard(
                  title: 'Selecting\n(W -> T)',
                  onTap: () => context.goTrainingScreen(Trainings.selectingWT),
                ),
                _TrainingCard(
                  title: 'Selecting\n(T -> W)',
                  onTap: () => context.goTrainingScreen(Trainings.selectingTW),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _TrainingCard(
                  title: 'Writing\n(W -> T)',
                  onTap: () => context.goTrainingScreen(Trainings.writingWT),
                ),
                _TrainingCard(
                  title: 'Writing\n(T -> W)',
                  onTap: () => context.goTrainingScreen(Trainings.writingTW),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TrainingCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _TrainingCard({
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: 100,
          height: 100,
          child: Center(
            child: Text(title),
          ),
        ),
      ),
    );
  }
}
