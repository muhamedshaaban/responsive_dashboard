import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor});

  final String text;
  final Color backgroundColor, textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 62,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0,
                backgroundColor: backgroundColor),
            onPressed: () {},
            child: Text(text,
                style: TextStyle(
                    fontSize: 18,
                    color: textColor,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600),),),);
  }
}
