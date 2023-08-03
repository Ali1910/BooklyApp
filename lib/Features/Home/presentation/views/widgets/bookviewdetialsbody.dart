import 'package:bookly/Core/Utitls/Styles.dart';
import 'package:bookly/Core/Utitls/widget/CustomButton.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/BookRatingItem.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/CustomBookImage.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/similarBooksSection.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/constants/constant.dart';
import 'BookDetailSection.dart';
import 'BooksDetiallsitview.dart';
import 'Booksaction.dart';
import 'CustomBookDetailsAppbar.dart';
import 'Featuredlistview.dart';

class Bookdetailviewbody extends StatelessWidget {
  const Bookdetailviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppbar(),
                BookDetailsSection(),
                SizedBox(
                  height: 37,
                ),
                BooksAction(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
