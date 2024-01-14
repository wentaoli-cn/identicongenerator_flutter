part of 'splash_bloc.dart';

enum SplashStatus { initial, loading, success, failure }

final class SplashState extends Equatable {
  const SplashState({this.status = SplashStatus.initial});

  final SplashStatus status;

  SplashState copyWith({SplashStatus? status}) =>
      SplashState(status: status ?? this.status);

  @override
  List<Object> get props => [status];
}
