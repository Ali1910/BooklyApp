import 'package:bookly/Core/Utitls/Styles.dart';
import 'package:bookly/Core/Utitls/widget/CustomButton.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/BookRatingItem.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';
import '../../../../../constants/constant.dart';
import 'Booksaction.dart';
import 'CustomBookDetailsAppbar.dart';

class Bookdetailviewbody extends StatelessWidget {
  const Bookdetailviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustomBookItem(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'Atomic Habit',
            style: styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              'James Clear',
              style: styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRatingItem(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          const BooksAction()
        ],
      ),
    );
  }
}
