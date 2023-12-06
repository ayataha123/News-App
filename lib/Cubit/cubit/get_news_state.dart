part of 'get_news_cubit.dart';

@immutable
sealed class GetNewsState {}

final class GetNewsInitial extends GetNewsState {}
final class GetNewsLoading extends GetNewsState {}
final class GetNewsSuccess extends GetNewsState {
 final List<ArticleModel> articales;

  GetNewsSuccess(this.articales);

}
final class GetNewsFailure extends GetNewsState {

}