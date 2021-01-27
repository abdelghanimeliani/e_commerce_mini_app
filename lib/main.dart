import 'package:e_commerce_mini_app/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  // main
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:  LoginScreen.id,
      routes:{
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id : (context)=> SignupScreen(),
    },

    );
  }
}
