
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.txt, this.colour, this.onPressed});
  final String txt;
  final Color colour;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
          textColor: Colors.white,
          onPressed: onPressed,
          color: colour,
          child: Text(txt),
        ),
      ),
    );
  }
}
