import 'package:flutter/material.dart';
class CustomRaisedButton  extends StatelessWidget { 
  const CustomRaisedButton({ this.color, this.borderRadius:10.0, this.onPressed, this.child});
  final Widget child;
  final Color color;
  final double borderRadius;

  final VoidCallback onPressed;

 
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
  child: child,
  shape: RoundedRectangleBorder(
    borderRadius:BorderRadius.all(Radius.circular(borderRadius))
  ),
  color: color,
  onPressed:onPressed );
  }
}