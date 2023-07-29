import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quote_app/view/screen/home_screen.dart';
import 'package:quote_app/view_model/bloc/quotes/quotes_cubit.dart';
import 'package:quote_app/view_model/data/network/dio_helper.dart';



void main() {
  WidgetsFlutterBinding();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {
    return MultiBlocProvider(
    providers: [
    BlocProvider(create: (context) => QuotesCubit()..getAllQuotes(),),
    ],
    child: MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    ),
    debugShowCheckedModeBanner: false,
    home: const HomeScreen(),
    ),
    );}
    );}
  }

