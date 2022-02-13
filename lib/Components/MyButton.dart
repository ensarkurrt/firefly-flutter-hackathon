import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  const MyButton({Key? key, required this.onPressed, required this.text, this.fontSize = 16, this.fontWeight = FontWeight.w400}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ButtonStyle(
          shadowColor: MaterialStateProperty.all<Color>(const Color(0xFFf07590)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0))),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(0))),
      child: Ink(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFf27c8e), Color(0xFFfdab83)],
          ),
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: const Color(0xFFf07590).withOpacity(0.5),
              blurRadius: 20,
              offset: const Offset(0, 7), // changes position of shadow
            ),
          ]),
          constraints: const BoxConstraints(minWidth: 100.0, minHeight: 50.0), // min sizes for Material buttons
          alignment: Alignment.center,
          padding: const EdgeInsets.all(5),
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
