import 'package:flutter/material.dart';
import 'package:nahal_it/ui/sign_in_one.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String tag = '/SplashScreenRoute';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 2500), () {
      Navigator.of(context).pushReplacementNamed(SignInOne.tag);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/splash_screen.jpg'),
                      fit: BoxFit.cover)),
            ),
            Positioned(
                left: 0,
                right: 0,
                top: 600,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'Nahal ',
                            style: TextStyle(
                                color: Color.fromARGB(255, 6, 88, 10),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            ' It',
                            style: TextStyle(
                                fontSize: 40,
                                color: Color.fromARGB(255, 116, 224, 83),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
