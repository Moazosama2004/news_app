import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({Key? key, required this.article}) : super(key: key);
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image.network(
              article.image??'data:image/jpeg;base64,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',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            article.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            article.description?? " ",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.5,
            ),
          ),
        ],
      ),
    );
  }
}
