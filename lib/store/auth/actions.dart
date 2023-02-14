import 'package:banking_clone/model/rights/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

class AuthSetFirebaseUserAction {
  final firebase.User? firebaseUser;

  const AuthSetFirebaseUserAction(this.firebaseUser);
}

class AuthSetUserAction {
  final User? user;

  const AuthSetUserAction(this.user);
}

class AuthLogoutAction {
  const AuthLogoutAction();
}
