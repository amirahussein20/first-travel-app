import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widgets/category_item.dart';

class categoriesScreen extends StatefulWidget {
  @override
  State<categoriesScreen> createState() => _categoriesScreenState();
}

class _categoriesScreenState extends State<categoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tour Guide'),
      ),
      body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 7 / 8,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: Categories_data.map(      (categoryData)    => 
          categoryItem (categoryData.title, categoryData.imageUrl),
           ).toList(),
      ),
    
    );
  }
}

