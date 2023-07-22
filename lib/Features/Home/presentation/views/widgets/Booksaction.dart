import 'package:flutter/material.dart';

import '../../../../../Core/Utitls/widget/CustomButton.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99€',
              backGroundcolor: Colors.white,
              textcolor: Colors.black,
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(16),
                bottomStart: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free preview',
              backGroundcolor: Color(0xffef8262),
              textcolor: Colors.white,
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(16),
                bottomEnd: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
