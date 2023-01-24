import 'package:banking_clone/model/redux/auth.state.dart';

class AppState {
  final AuthState auth;
  const AppState._({
    required this.auth,
  });

  factory AppState.init() => const AppState._(
        auth: AuthState(),
      );

  AppState copyWith({
    final AuthState? auth,
  }) =>
      AppState._(
        auth: auth ?? this.auth,
      );

  @override
  int get hashCode {
    return auth.hashCode;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is AppState && hashCode == other.hashCode;
}
