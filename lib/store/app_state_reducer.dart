import 'package:banking_clone/model/redux/app_state.dart';
import 'package:banking_clone/store/auth/reducer.dart';

class AppStateReducer {
  static AppState appStateReducer(AppState state, action) => state.copyWith(
        auth: AuthStateReducer.reducer(state.auth, action),
      );
}
