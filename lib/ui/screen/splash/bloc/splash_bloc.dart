import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState()) {
    on<SplashStarted>(_onSplashStarted);
    on<SplashEnded>(_onSplashEnded);

    add(SplashStarted());
  }

  Future<void> _onSplashStarted(
    SplashStarted event,
    Emitter<SplashState> emit,
  ) async {
    emit(state.copyWith(status: SplashStatus.loading));

    await Future.delayed(const Duration(seconds: 2))
        .then((_) => add(SplashEnded()));
  }

  Future<void> _onSplashEnded(
    SplashEnded event,
    Emitter<SplashState> emit,
  ) async {
    emit(state.copyWith(status: SplashStatus.success));
  }
}
