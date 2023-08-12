import 'package:bookly/Core/Utitls/ApiService.dart';
import 'package:bookly/Core/Utitls/Approuters.dart';
import 'package:bookly/Core/Utitls/serviceLocator.dart';
import 'package:bookly/Core/constants/constant.dart';
import 'package:bookly/Features/Home/data/repos/homerepoimpelemntation.dart';
import 'package:bookly/Features/Home/presentation/Manager/featured_books_cubit/featuredbooks_cubit.dart';
import 'package:bookly/Features/Home/presentation/Manager/newestBooksCubit/newestbooks_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';
import 'Features/splash/presentation/views/SplashView.dart';

void main() {
  setupservicelocator();
  runApp(const BooklyApp());
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //     overlays: [SystemUiOverlay.bottom]);
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedbooksCubit(
            getIt.get<HomeRepoImpelemetation>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewestbooksCubit(
            getIt.get<HomeRepoImpelemetation>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
