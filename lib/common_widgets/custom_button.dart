import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double height;
  final VoidCallback onPressed;

  const CustomButton({
    Key key,
    this.color,
    this.onPressed,
    this.child,
    this.height: 50.0,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: child,
      ),
    );
  }
}
