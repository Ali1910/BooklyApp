import 'package:flutter/material.dart';

import 'BestSllerListViewitem.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return const BestSellerListViewItem();
      },
      itemCount: 5,
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
    );
  }
}
