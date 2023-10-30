import 'package:flutter/material.dart';
import 'package:nahal_it/ui/home_screen.dart';
import 'package:nahal_it/ui/log_in/log_in_one.dart';
import 'package:nahal_it/ui/log_in/log_in_two.dart';
import 'package:nahal_it/ui/log_in/sign_in.dart';
import 'package:nahal_it/ui/log_in/splash_screen.dart';

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
          LogInOne.tag: (context) => LogInOne(),
          LogInTwo.tag: (context) => LogInTwo(),
          SignIn.tag: (context) => SignIn(),
        });
  }
}
