import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image.asset(
              'assets/entertaiment.avif',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Large Title Should be in this place Large Title Should be in this place Large Title Should be in this place',
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
            'Large Title Should be in this place Large Title Should be in this place Large Title Should be in this place',
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
