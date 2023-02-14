import 'package:redux/redux.dart';

import 'package:banking_clone/model/redux/auth.state.dart';
import 'package:banking_clone/store/auth/actions.dart';

class AuthStateReducer {
  static final reducer = combineReducers<AuthState>([
    TypedReducer<AuthState, AuthSetFirebaseUserAction>(_setFirebaseUser),
    TypedReducer<AuthState, AuthSetUserAction>(_setUser),
  ]);

  static AuthState _setFirebaseUser(
    AuthState state,
    AuthSetFirebaseUserAction action,
  ) {
    return AuthState(
      firebaseUser: action.firebaseUser,
    );
  }

  static AuthState _setUser(AuthState state, AuthSetUserAction action) {
    return state.copyWith(
      user: action.user,
    );
  }
}
