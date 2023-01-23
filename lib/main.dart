import 'package:banking_clone/screens/auth/login.dart';
import 'package:banking_clone/service/navigation_service.dart';
import 'package:banking_clone/service/scaffold_messenger_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
