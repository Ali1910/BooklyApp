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
          return const CustomBookItem(
            imageUrl:
                'https://th.bing.com/th/id/OIP.iSu2RcCcdm78xbxNDJMJSgHaEo?pid=ImgDet&rs=1',
          );
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
