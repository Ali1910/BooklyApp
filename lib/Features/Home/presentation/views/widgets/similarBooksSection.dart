import 'package:bookly/Core/Utitls/Styles.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/BooksDetiallsitview.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookDetailListView(),
      ],
    );
  }
}
