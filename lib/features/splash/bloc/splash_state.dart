part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initializing() = _Initializing;
  const factory SplashState.initialized() = _Initialized;
}
