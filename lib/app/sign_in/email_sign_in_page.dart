import 'package:flutter/material.dart';
import 'package:time_tracker_app/app/sign_in/widget/email_sign_in_form.dart';
import 'package:time_tracker_app/services/auth.dart';

class EmailSignInPage extends StatelessWidget {
  final AuthBase auth;

  const EmailSignInPage({Key key, @required this.auth}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: EmailSignInForm(
            auth: auth,
          ),
        ),
      ),
    );
  }
}