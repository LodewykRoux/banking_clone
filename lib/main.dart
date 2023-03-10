import 'package:banking_clone/model/redux/app_state.dart';
import 'package:banking_clone/screens/auth/login.dart';
import 'package:banking_clone/service/navigation_service.dart';
import 'package:banking_clone/service/scaffold_messenger_service.dart';
import 'package:banking_clone/store/app_state_reducer.dart';
import 'package:banking_clone/theme/theme.dart';
import 'package:banking_clone/theme/theme_manager.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final store = Store<AppState>(
    AppStateReducer.appStateReducer,
    initialState: AppState.init(),
    middleware: [
      thunkMiddleware,
    ],
  );

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: BankingCloneTheme.instance.lightTheme,
      darkTheme: BankingCloneTheme.instance.darkTheme,
      themeMode: ThemeManager.instance.themeMode,
      home: const Login(),
      scaffoldMessengerKey: ScaffoldMessengerService.instance.getKey(),
      navigatorKey: NavigationService.instance.navigationKey,
    );
  }
}
