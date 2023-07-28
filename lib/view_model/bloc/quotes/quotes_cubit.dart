

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_app/model/quotes/quotes_model.dart';
import 'package:quote_app/view_model/bloc/quotes/quotes_state.dart';
import 'package:quote_app/view_model/utils/constant.dart';


import '../../data/network/dio_helper.dart';
import '../../data/network/end_point.dart';



class QuotesCubit extends Cubit<QuotesState> {
  QuotesCubit() : super(QuotesInitial());
  static QuotesCubit get(context)=>BlocProvider.of<QuotesCubit>(context);
  void toggleIsFav(int index){
    quotesModel?.quotes[index].private=!(quotesModel?.quotes[index].private??true);
    if(quotesModel?.quotes[index].private==true)
   { quotesModel?.quotes[index].favoritesCount=(quotesModel?.quotes[index].favoritesCount??0)+1;}
    else{quotesModel?.quotes[index].favoritesCount=(quotesModel?.quotes[index].favoritesCount??0)-1;}
    emit(ToggleIsFavorite());
  }

  QuotesModel? quotesModel;
  void getAllQuotes(){
    emit(GetAllQuotesLoadingState());
    DioHelper.getData(endPoint: EndPoints.quotes,token: apiToken
      ,).then((value) {
      print(value.data);
      quotesModel=QuotesModel.fromJson(value.data);
      emit(GetAllQuotesSuccessState());
    }).catchError((error)
    {
      print(error);
      emit(GetAllQuotesErrorState());
    });
  }

}
