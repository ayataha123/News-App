
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  // final List<ArticleModel> articles;

const NewsListView({super.key, required this.articales});

 final List<ArticleModel> articales;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articales.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: NewsTile(
          articleModel: articales[index],
        ),
      );
    }));
  }
}
