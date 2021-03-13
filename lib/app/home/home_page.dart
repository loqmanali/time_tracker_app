import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'LogOut',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
