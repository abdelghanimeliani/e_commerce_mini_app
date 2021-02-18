import 'package:e_commerce_mini_app/provider/admin_mod.dart';
import 'package:e_commerce_mini_app/provider/modalhud.dart';
import 'package:e_commerce_mini_app/screens/admin/add_product.dart';
import 'package:e_commerce_mini_app/screens/admin/admine_home.dart';
import 'package:e_commerce_mini_app/screens/admin/edit_product.dart';
import 'package:e_commerce_mini_app/screens/signin_screen.dart';
import 'package:e_commerce_mini_app/screens/user/home_page.dart';
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  // main
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ModalHud>(create: (context) => ModalHud()),
        ChangeNotifierProvider<AdminMod>(create: (context) => AdminMod()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.id,
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          SignupScreen.id: (context) => SignupScreen(),
          HomePage.id: (context) => HomePage(),
          AdminHome.id: (context) => AdminHome(),
          AddProduct.id: (context) => AddProduct(),
          EditProduct.id: (context) => EditProduct(),
        },
      ),
    );
  }
}
