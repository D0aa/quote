import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../model/quotes/quotes_model.dart';

class QuoteWidget extends StatelessWidget {
  final Quotes quote;
  final void Function()? onPressed;

  const QuoteWidget({required this.quote, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 680.h,
      padding: const EdgeInsets.all(12).w,
     decoration: BoxDecoration(
       color:Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(.3),

     ),
      child: Column(
        children: [
         
          // Text('“',
          //     style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold,fontFamily: 'Anime',color: Colors.white,)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/Quotation-Symbol-PNG.png',
                        height: 80,
                        width: 80,
                        alignment: AlignmentDirectional.topStart),
                    const Expanded(child: SizedBox())
                  ],
                ),
                Text(quote.body ?? '',
                  textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Cloudy June',
                      fontSize: 22.sp,fontWeight: FontWeight.w500,color: Colors.black,
                    ),
                ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      quote.author ?? '',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontFamily: 'Anime',
                        color: Colors.black,
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    if(quote.private??false)
                      Lottie.asset('assets/lottie/animation_lkmxgc32.json',repeat: false,
                        alignment: AlignmentDirectional.center,
                        width: 30,
                        height: 30,
                        fit: BoxFit.fill,
                      ),


                  ],
                ),



              ],
            ),
          ),

         


          Row(
            children: [

              IconButton(
                  onPressed: onPressed,
                  icon: quote.private ?? false
                      ? Icon(Icons.favorite,size: 40.sp,color: Colors.black,)
                      : Icon(Icons.favorite_border,size: 40.sp,color: Colors.black,)),
              Text('${quote.favoritesCount ?? 0} likes',style: TextStyle(fontFamily: 'Cloudy June',
                color: Colors.black,
                fontSize: 22.sp,),),


              // IconButton(
              //     onPressed: () {}, icon: Icon(Icons.file_download_outlined)),
            ],
          ),
          SizedBox(height: 30.h,),
          // Row(
          //   children: [
          //     IconButton(onPressed: () {}, icon: Icon(Icons.copy)),
          //     Text('copy'),
          //   ],
          // )
        ],
      ),
    );
  }
}
