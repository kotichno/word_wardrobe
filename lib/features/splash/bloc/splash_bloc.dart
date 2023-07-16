import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const _Initializing()) {
    on<SplashEvent>((event, emit) async {
      await event.when(initialize: () => _initialize(emit));
    });
  }
  
  Future<void> _initialize(Emitter<SplashState> emit) async{
    await Future<void>.delayed(const Duration(seconds: 2));
    emit(const SplashState.initialized());
  }
}
