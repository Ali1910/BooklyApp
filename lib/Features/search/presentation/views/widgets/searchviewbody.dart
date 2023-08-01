import 'package:bookly/Features/search/presentation/views/widgets/customserachtextfeild.dart';
import 'package:flutter/material.dart';

class Searchviewbody extends StatelessWidget {
  const Searchviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchTextFeild(),
        ],
      ),
    );
  }
}
