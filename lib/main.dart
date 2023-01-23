import 'package:banking_clone/screens/auth/login.dart';
import 'package:banking_clone/service/navigation_service.dart';
import 'package:banking_clone/service/scaffold_messenger_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  final store = Store<AppState>(
    AppStateReducer.appStateReducer,
    initialState: AppState.init(),
    middleware: [
      thunkMiddleware,
      AuthMiddleware(),
      MarketMiddleware(),
      CommodityMiddleware(),
      ProducerMiddleware(),
      AgentMiddleware(),
    ],
  );

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
      scaffoldMessengerKey: ScaffoldMessengerService.instance.getKey(),
      navigatorKey: NavigationService.instance.navigationKey,
    );
  }
}
