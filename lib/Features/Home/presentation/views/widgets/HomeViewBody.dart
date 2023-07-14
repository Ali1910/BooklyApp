import 'package:bookly/Core/Utitls/Styles.dart';
import 'package:flutter/material.dart';
import 'CustomAppBar.dart';
import 'Featuredlistview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Customappbar(),
        FeaturedBooklistview(),
        Padding(
          padding: EdgeInsets.only(top: 45.0, left: 16),
          child: Text(
            'Best seller',
            style: styles.titleMedium,
          ),
        ),
      ],
    );
  }
}
