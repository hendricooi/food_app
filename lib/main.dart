import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constraints.dart';
import 'package:food_app/login/register.dart';
import 'package:food_app/login/ConfirmEmail.dart';
import 'package:food_app/login/ForgetPassword.dart';
import 'package:food_app/login/login.dart';
import 'package:food_app/screens/wrapper.dart';
import 'package:food_app/services/auth_services.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food App',
        theme: ThemeData(
            primaryColor: kPrimaryColor,
            scaffoldBackgroundColor: Colors.white,
            textTheme: TextTheme(
                bodyText1: TextStyle(color: kSecondaryColor),
                bodyText2: TextStyle(color: kSecondaryColor))),
        initialRoute: '/',
        routes: {
          '/': (context) => Wrapper(),
          '/login': (context) => Login(),
          '/register': (context) => Register(),
          ForgotPassword.id: (context) => ForgotPassword(),
          ConfirmEmail.id: (context) => ConfirmEmail(
              message:
                  'An email has just been sent to you, Click the link provided to complete registration'),
        },
      ),
    );
  }
}
