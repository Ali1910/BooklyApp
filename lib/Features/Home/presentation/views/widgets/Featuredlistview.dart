import 'package:flutter/material.dart';

import 'customlistviewitem.dart';

class FeaturedBooklistview extends StatelessWidget {
  const FeaturedBooklistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const FeaturedListViewItem();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 8.0,
          );
        },
        itemCount: 5,
      ),
    );
  }
}
