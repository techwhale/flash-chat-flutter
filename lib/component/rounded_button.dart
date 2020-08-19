import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final MaterialAccentColor color;
  final Function onPressHandler;
  RoundedButton({
    @required this.label,
    @required this.color,
    @required this.onPressHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: this.color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressHandler,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            this.label,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
