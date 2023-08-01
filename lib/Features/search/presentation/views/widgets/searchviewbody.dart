import 'package:bookly/Core/Utitls/Styles.dart';
import 'package:bookly/Features/search/presentation/views/widgets/customserachtextfeild.dart';
import 'package:bookly/Features/search/presentation/views/widgets/searchreasultlistview.dart';
import 'package:flutter/material.dart';

class Searchviewbody extends StatelessWidget {
  const Searchviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: CustomSearchTextFeild(),
          ),
          Text(
            'Result',
            style: styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListview()),
        ],
      ),
    );
  }
}
