import 'package:flutter/material.dart';

class categoryItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  categoryItem(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            imageUrl,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,      
             child: Text(
            title,
            style:Theme.of(context).textTheme.headline6,
            ),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(15),
            ),
        ),
      ],
    );
  }
}
