import 'package:flutter/material.dart';
import 'CustomBookDetailsAppbar.dart';

class Bookdetailviewbody extends StatelessWidget {
  const Bookdetailviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppbar(),
        ],
      ),
    );
  }
}
