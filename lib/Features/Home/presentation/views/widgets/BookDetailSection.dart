import 'package:bookly/Core/Utitls/Styles.dart';
import 'package:flutter/material.dart';

import 'BookRatingItem.dart';
import 'CustomBookImage.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: const CustomBookItem(),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          'Atomic Habit',
          style: styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'James Clear',
            style: styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRatingItem(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
