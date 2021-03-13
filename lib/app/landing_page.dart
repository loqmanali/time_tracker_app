import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_app/app/home/home_page.dart';
import 'package:time_tracker_app/app/sign_in/sign_in_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  User _user;

  void _updateUser(User user) {
    print('user id: ${user.uid}');
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      print(_user);
      return SignInPage(
        onSignIn: _updateUser,
      );
    } else {
      return HomePage();
    }
  }
}
