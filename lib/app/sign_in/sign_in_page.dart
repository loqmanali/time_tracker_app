import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_app/app/sign_in/widget/sign_in_button.dart';
import 'package:time_tracker_app/app/sign_in/widget/social_sign_in_button.dart';

class SignInPage extends StatelessWidget {
  Future<void> _signInAnonymously() async {
    try {
      final userCredentials = await FirebaseAuth.instance.signInAnonymously();
      print('userSignInAnonymously: ${userCredentials.user.uid}');
    } catch (e) {
      print('Error: ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
      ),
      backgroundColor: Colors.grey[200],
      body: _buildContainer(),
    );
  }

  Widget _buildContainer() {
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
            onPressed: () {},
            assetName: 'images/google-logo.png',
            text: 'Sign In with Google',
            textColor: Colors.black87,
            color: Colors.white,
          ),
          SizedBox(height: 10.0),
          SocialSignInButton(
            onPressed: () {},
            assetName: 'images/facebook-logo.png',
            text: 'Sign In with Facebook',
            textColor: Colors.white,
            color: Color(0xFF334D92),
          ),
          SizedBox(height: 10.0),
          SignInButton(
            onPressed: () {},
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
            onPressed: _signInAnonymously,
            text: 'Go anonymous',
            textColor: Colors.black,
            color: Colors.lime[300],
          ),
        ],
      ),
    );
  }
}
