import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:kotaawan/feature/main/home/group-button-service.dart';
import 'file:///C:/Users/Zulfa/Documents/Android%20Studio%20Project/kotaawan/lib/feature/main/home/product/new-product.dart';
import 'package:kotaawan/feature/main/home/news-update.dart';
import 'article/article.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sutikno Sofjan',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20,10,0,0),
            child: Text(
              'Articles',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
            ),
          ),
           Article(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,0,0,0),
            child: Text(
              'New Product',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
            ),
          ),
          NewProduct(),
          GroupButtonService(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,0,0,0),
            child: Text(
              'News Update',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
            ),
          ),
          NewsUPdate(),
        ],
      ),
    );
  }
}


