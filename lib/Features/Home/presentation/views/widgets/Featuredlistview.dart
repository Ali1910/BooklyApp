import 'package:bookly/Core/Utitls/widget/CustomLOadingIndicator.dart';
import 'package:bookly/Core/Utitls/widget/Customerrorwidget.dart';
import 'package:bookly/Features/Home/presentation/Manager/featured_books_cubit/featuredbooks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'CustomBookImage.dart';

class FeaturedBooklistview extends StatelessWidget {
  const FeaturedBooklistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedbooksCubit, FeaturedbooksState>(
      builder: (context, state) {
        if (state is FeaturedbooksSucces) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomBookItem(
                  imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail
                          .toString() ??
                      'https://th.bing.com/th/id/OIP.vxFF12mSgYf6Cs5z9O2i7QAAAA?pid=ImgDet&rs=1',
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 8.0,
                );
              },
              itemCount: state.books.length,
            ),
          );
        } else if (state is FeaturedbooksFailure) {
          return customErrorWidget(
            errormess: state.errorM,
          );
        } else {
          return const CustomLoadingIndactorwidget();
        }
      },
    );
  }
}
