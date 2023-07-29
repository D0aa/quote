import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quote_app/view/screen/quotes_screen.dart';


import '../../model/navigation/navigation.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20).w,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff6E9787),
          ),
          child: Column(
            children: [
              SizedBox(height: 20.h,),
              Text('Quotes',
                  style: TextStyle(fontSize: 75.sp, fontWeight: FontWeight.bold,fontFamily: 'Anime',color: Colors.white)),
              SizedBox(height: 100.h,),
              Text('Knowledge is knowing what to say',textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w300,fontFamily: 'Cloudy June',color: Colors.white)),
              SizedBox(height: 100.h,),
              SizedBox(
                height: 90,
                width: 170,
                child: ElevatedButton(
                  onPressed: (){
                    Navigation.push(context, const QuotesScreen());
                  },style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 20,
                ), child: const Text('Begin',style: TextStyle(
                  color: Color(0xff6E9787),
                  fontFamily: 'Anime',
                  fontSize: 35,
                )),),
              ),
            ],
          ),

    ) ,

      ),
    );
  }
}
