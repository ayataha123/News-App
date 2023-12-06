
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_ui_setup/Cubit/cubit/get_news_cubit.dart';
import 'package:news_app_ui_setup/widgets/news_list_view.dart';

class NewsListViewBulider extends StatelessWidget {
  const NewsListViewBulider({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
     BlocProvider.of<GetNewsCubit>(context).getGenralNews(catogery:category );
    return BlocBuilder<GetNewsCubit, GetNewsState>(
      builder: (context, state) {
        if (state is GetNewsLoading) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: const Align(
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }else if(state is GetNewsSuccess)
        {
          final articles=state.articales;
          return NewsListView(articales:articles );
        }else if(state is GetNewsFailure){
        return  SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height,
                  child: const Align(
                    alignment: Alignment.center,
                  child: Text(' there was an error'),
                ),
                ),
             );
        }else{
          return SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height,
                  child: const Align(
                    alignment: Alignment.center,
                  child: Text(' initial state'),
                ),
                ),
             );
        }
      }
    );
  }
}

