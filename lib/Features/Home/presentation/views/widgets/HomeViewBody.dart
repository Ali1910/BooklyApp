import 'package:flutter/material.dart';
import 'CustomAppBar.dart';
import 'customlistviewitem.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Customappbar(),
        FeaturedBooklistview(),
      ],
    );
  }
}

class FeaturedBooklistview extends StatelessWidget {
  const FeaturedBooklistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: FeaturedListViewItem(),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
