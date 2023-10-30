import 'package:flutter/material.dart';

class LogInTwo extends StatefulWidget {
  const LogInTwo({super.key});
  static const String tag = '/LogInTwoRoute';
  @override
  State<LogInTwo> createState() => _SignInTwoState();
}

class _SignInTwoState extends State<LogInTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Continue with E-mail'),
      ),
      body: SafeArea(
        child: Column(children: [
          TextFormField(),
        ]),
      ),
    );
  }
}
