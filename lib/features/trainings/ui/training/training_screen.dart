import 'package:flutter/material.dart';
import 'package:word_wardrobe/features/trainings/entity/training_type.dart';

class TrainingScreen extends StatelessWidget {
  final Trainings trainingType;

  const TrainingScreen({
    required this.trainingType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          trainingType.toString(),
        ),
      ),
    );
  }
}
