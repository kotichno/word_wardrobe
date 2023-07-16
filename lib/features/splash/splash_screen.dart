import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:word_wardrobe/common/navigation/navigation.dart';
import 'package:word_wardrobe/features/splash/bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc(),
      child: _SplashView(),
    );
  }
}

class _SplashView extends StatefulWidget {
  @override
  State<_SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<_SplashView> {
  @override
  void initState() {
    super.initState();

    context.read<SplashBloc>().add(const SplashEvent.initialize());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listenWhen: (previous, current) => previous.when(
        initialized: () => false,
        initializing: () => current.when(
          initializing: () => false,
          initialized: () => true,
        ),
      ),
      listener: (context, state) => context.goMainScreen(),
      child: Scaffold(
        body: Center(
          child: Text(
            'Splash Screen',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
