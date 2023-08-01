import 'package:flutter/material.dart';

import '../../../../Home/presentation/views/widgets/BookListViewitem.dart';

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Booklistviewitem();
      },
      itemCount: 10,
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
    );
  }
}
