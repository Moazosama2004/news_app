import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/widgets/categories_lisst_view.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';
import 'package:news_app/widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News ',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                ' Cloud',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
          elevation: 0.0,
        ),
        body: const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32.0,
                ),
              ),
              NewsListViewBuilder(
                category: 'general',
              )
            ],
          ),
        ));
  }
}
