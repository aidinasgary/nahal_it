import 'package:flutter/material.dart';
import 'package:nahal_it/ui/home_screen.dart';
import 'package:nahal_it/ui/sign_in_one.dart';
import 'package:nahal_it/ui/sign_in_two.dart';
import 'package:nahal_it/ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(),
        routes: {
          SplashScreen.tag: (context) => SplashScreen(),
          HomeScreen.tag: (context) => HomeScreen(),
          SignInTwo.tag: (context) => SignInTwo(),
          SignInOne.tag: (context) => SignInOne(),
        });
  }
}
