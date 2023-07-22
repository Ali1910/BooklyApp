import 'package:bookly/Core/Utitls/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingItem extends StatelessWidget {
  const BookRatingItem(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4f),
          size: 14,
        ),
        SizedBox(
          width: 7.3,
        ),
        Text(
          '4.8',
          style: styles.textStyle16,
        ),
        SizedBox(
          width: 6.3,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(2455)',
            style: styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
