import 'package:flutter/material.dart';
import 'package:nahal_it/ui/home_screen.dart';
import 'package:nahal_it/ui/log_in/sign_in.dart';

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
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 213, 241, 198),
              Color.fromARGB(255, 2, 179, 11),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.2, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          )),
          child: Center(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Continue with E-mail',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your E-mail address',
                      hintStyle: TextStyle(fontSize: 12),
                      labelText: 'E-mail',
                      labelStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 20),
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(fontSize: 12)),
                  ),
                ),
              ),
              Text('I forgot my password'),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(SignIn.tag);
                    },
                    child: Text(
                      "Don't have account? Let's create !",
                      style: TextStyle(fontSize: 17),
                    )),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(HomeScreen.tag);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  child: Text(
                    '       Next      ',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
