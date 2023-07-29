import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../view_model/bloc/quotes/quotes_cubit.dart';
import '../../view_model/bloc/quotes/quotes_state.dart';
import '../components/quotes/quote_widget.dart';

class QuotesScreen extends StatelessWidget {
  const QuotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Color(0xff52565A),
      //   title: Text('Quotes',
      //       style: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.bold,fontFamily: 'Anime',color: Colors.white)),
      //   centerTitle: true,
      // ),
      body: BlocConsumer<QuotesCubit, QuotesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit=QuotesCubit.get(context);
          return ListView.separated(
              physics: const PageScrollPhysics(),
              padding: const EdgeInsets.all(12).w,
              itemBuilder: (context, index) => QuoteWidget(quote: cubit.quotesModel!.quotes[index],
              onPressed: (){
                cubit.toggleIsFav(index);
              },
              ),
              separatorBuilder: (context, index) => SizedBox(height: 10.h),
              itemCount: cubit.quotesModel?.quotes.length??0);
        },
      ),
    );
  }
}
