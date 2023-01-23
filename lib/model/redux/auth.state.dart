import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:tally/model/rights/user.dart';

class AuthState {
  final firebase.User? firebaseUser;
  final User? user;

  const AuthState({
    this.firebaseUser,
    this.user,
  });

  AuthState copyWith({
    final firebase.User? firebaseUser,
    final User? user,
  }) {
    return AuthState(
      firebaseUser: firebaseUser ?? this.firebaseUser,
      user: user ?? this.user,
    );
  }

  @override
  int get hashCode {
    return '''
    $firebaseUser
    $user'''
        .hashCode;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthState && hashCode == other.hashCode;
}
