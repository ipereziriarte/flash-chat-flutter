import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onClick;

  const RoundedButton({@required this.title, @required this.color, @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: this.color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: this.onClick,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            this.title,
          ),
        ),
      ),
    );
  }
}
