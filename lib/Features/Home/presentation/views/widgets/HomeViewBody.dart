import 'package:bookly/Core/Utitls/Styles.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/BookListViewitem.dart';
import 'package:flutter/material.dart';
import 'Bestsellerlistview.dart';
import 'CustomAppBar.dart';
import 'Featuredlistview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Customappbar(),
              FeaturedBooklistview(),
              Padding(
                padding: EdgeInsets.only(top: 45.0, left: 16),
                child: Text(
                  'Best seller',
                  style: styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 16.0, top: 20.0, bottom: 20),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
