import 'package:bookly/Core/Utitls/assets.dart';
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
        CustomListViewItem(),
      ],
    );
  }
}
