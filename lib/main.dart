import 'package:flutter/material.dart';
import 'package:project_name/screens/home.dart';
import 'package:get/get.dart';
import 'package:project_name/screens/validate.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:project_name/screens/login.dart';
import 'firebase_options.dart';
import 'screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: LoginScreen(),
    );
  }
}
