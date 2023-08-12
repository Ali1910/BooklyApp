import 'package:bookly/Core/Utitls/Styles.dart';
import 'package:flutter/material.dart';

class customErrorWidget extends StatelessWidget {
  const customErrorWidget({super.key, required this.errormess});
  final String errormess;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errormess,
        style: styles.textStyle18,
      ),
    );
  }
}
