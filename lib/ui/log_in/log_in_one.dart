import 'package:flutter/material.dart';
import 'package:nahal_it/ui/log_in/log_in_two.dart';

class LogInOne extends StatefulWidget {
  const LogInOne({super.key});
  static const String tag = '/LogInOneRoute';
  @override
  State<LogInOne> createState() => _SignInOneState();
}

class _SignInOneState extends State<LogInOne> {
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(LogInTwo.tag);
                      },
                      child: Container(
                        width: 230,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.login),
                            Text(
                              ' Continue with E-mail',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
