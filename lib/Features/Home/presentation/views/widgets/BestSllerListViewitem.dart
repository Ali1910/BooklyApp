import 'package:bookly/Core/Utitls/Styles.dart';
import 'package:bookly/Core/Utitls/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/constant.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage(
                    AssetsData.testimage,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Atomic Habits ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: styles.textStyle20.copyWith(
                      fontFamily: kGTSectraFineRegular,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'James Clear',
                  style: styles.textStyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
