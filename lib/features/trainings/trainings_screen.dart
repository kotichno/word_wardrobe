import 'package:flutter/material.dart';

class TrainingsScreen extends StatelessWidget {
  const TrainingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Trainings Screen',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
