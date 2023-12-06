import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());

  Future<void> getGenralNews({required String catogery}) async {
    emit(GetNewsLoading());
    try {
      Response response = await Dio().get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=5cd15894f7b642dc9ca26e65c0079100&category=$catogery");

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articales = jsonData["articles"];
      List<ArticleModel> articalesList = [];

      for (var article in articales) {
        ArticleModel articleModel = ArticleModel.fromJson(article);

        articalesList.add(articleModel);
      }
      emit(GetNewsSuccess(articalesList));
    } catch (e) {
      emit(GetNewsFailure());
    }
  }
}
