import 'package:bookly/Core/Utitls/Styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backGroundcolor,
      required this.textcolor,
      this.borderRadius,
      required this.text});

  final Color backGroundcolor;
  final String text;
  final Color textcolor;
  final BorderRadiusDirectional? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backGroundcolor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: styles.textStyle16.copyWith(
            color: textcolor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
