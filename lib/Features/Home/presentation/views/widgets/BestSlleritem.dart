import 'package:bookly/Core/Utitls/Styles.dart';
import 'package:bookly/Core/Utitls/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
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
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    'Atomic Habits',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: styles.textStyle20,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
