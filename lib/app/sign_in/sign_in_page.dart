import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_tracker_app/app/sign_in/email_sign_in_page.dart';
import 'package:time_tracker_app/app/sign_in/widget/sign_in_button.dart';
import 'package:time_tracker_app/app/sign_in/widget/social_sign_in_button.dart';
import 'package:time_tracker_app/services/auth.dart';

class SignInPage extends StatelessWidget {
  Future<void> _signInAnonymously(BuildContext context) async {
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signInAnonymously();
    } catch (e) {
      print('Error: ${e.toString()}');
    }
  }

  Future<void> _signInWithGoogle(BuildContext context) async {
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signInWithGoogle();
    } catch (e) {
      print('Error: ${e.toString()}');
    }
  }

  Future<void> _signInWithFacebook(BuildContext context) async {
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signInWithFacebook();
    } catch (e) {
      print('Error: ${e.toString()}');
    }
  }

  void _signInWithEmail(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => EmailSignInPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
      ),
      backgroundColor: Colors.grey[200],
      body: _buildContainer(context),
    );
  }

  Widget _buildContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 50.0),
          SocialSignInButton(
            onPressed: () => _signInWithGoogle(context),
            assetName: 'images/google-logo.png',
            text: 'Sign In with Google',
            textColor: Colors.black87,
            color: Colors.white,
          ),
          SizedBox(height: 10.0),
          SocialSignInButton(
            onPressed: () => _signInWithFacebook(context),
            assetName: 'images/facebook-logo.png',
            text: 'Sign In with Facebook',
            textColor: Colors.white,
            color: Color(0xFF334D92),
          ),
          SizedBox(height: 10.0),
          SignInButton(
            onPressed: () => _signInWithEmail(context),
            text: 'Sign In with Email',
            textColor: Colors.white,
            color: Colors.teal[700],
          ),
          SizedBox(height: 10.0),
          Text(
            'Or',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 10.0),
          SignInButton(
            onPressed: () => _signInAnonymously(context),
            text: 'Go anonymous',
            textColor: Colors.black,
            color: Colors.lime[300],
          ),
        ],
      ),
    );
  }
}
