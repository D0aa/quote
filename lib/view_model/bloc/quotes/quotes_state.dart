
abstract class QuotesState {}

class QuotesInitial extends QuotesState {}
class GetAllQuotesSuccessState extends QuotesState{}
class GetAllQuotesLoadingState extends QuotesState{}
class GetAllQuotesErrorState extends QuotesState{}
class ToggleIsFavorite extends QuotesState{}
