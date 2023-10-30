import 'package:flutter/material.dart';

class SignInOne extends StatefulWidget {
  const SignInOne({super.key});
  static const String tag = '/SignInOneRoute';
  @override
  State<SignInOne> createState() => _SignInOneState();
}

class _SignInOneState extends State<SignInOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 50, 241, 107),
              Color.fromARGB(255, 7, 201, 0),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 1.3),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          )),
          child: Column(children: [
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.amber,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    color: Colors.white,
                    child: Text('continuw with google'),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
