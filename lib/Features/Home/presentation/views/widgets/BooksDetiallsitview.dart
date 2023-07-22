import 'package:flutter/material.dart';

import 'CustomBookImage.dart';

class BookDetailListView extends StatelessWidget {
  const BookDetailListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomBookItem();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 5.0,
          );
        },
        itemCount: 5,
      ),
    );
  }
}
