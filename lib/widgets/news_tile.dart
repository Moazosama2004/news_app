import 'package:cached_network_image/cached_network_image.dart';
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
            child: article.image != null
                ? Image.network(
                    article.image!,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    'https://i.pinimg.com/originals/95/f8/61/95f86170f93a8466f628d9a435b80ee8.jpg',
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
            article.description ?? " ",
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
