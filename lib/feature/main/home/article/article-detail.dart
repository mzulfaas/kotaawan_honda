import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kotaawan/feature/main/home/article/article-list.dart';
import 'package:kotaawan/model/product.dart';
import 'package:http/http.dart' as http;

class ArticleDetailPage extends StatefulWidget {

  String img;
  String name;
  String description;
  String price;

  ArticleDetailPage({Key key, this.img, this.name, this.price, this.description}) : super(key: key);

  @override
  _ArticleDetailPageState createState() => _ArticleDetailPageState();
}

class _ArticleDetailPageState extends State<ArticleDetailPage> {

  final String apiUrl = "https://dealer.kotaawan.com/ajax/getreligion/session01";

  Future<Product> fetchDetailArticle() async {
    var result = await http.get(apiUrl);
    return Product.fromJson(json.decode(result.body));
    // return json.decode(result.body)['data'];
  }

  Future<Product> futureDetailProduct;
  @override
  void initState() {
    super.initState();
    futureDetailProduct = fetchDetailArticle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(200,0,10,0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20),
                ),
                color: Colors.red
            ),
            child: Text(
              'Article',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Image.network("https://dealer.kotaawan.com/img/articles/${widget.img}",
              ),
            ),
            SizedBox(
              height: 100,
              width: 400,
              child: ListView(
                padding: EdgeInsets.all(10),
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    // width: 100,
                    // height: 100,
                    child: Image.network("https://dealer.kotaawan.com/img/articles/${widget.img}"),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    // width: 200,
                    // height: 200,
                    child: Image.network("https://dealer.kotaawan.com/img/articles/${widget.img}"),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    // width: 200,
                    // height: 200,
                    child: Image.network("https://dealer.kotaawan.com/img/articles/${widget.img}"),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    // width: 200,
                    // height: 200,
                    child: Image.network("https://dealer.kotaawan.com/img/articles/${widget.img}"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                  widget.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(widget.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ArticleListPage()),
                  );
                },
                child: Text(
                  "Artikel Lainya",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      )
    );
  }
}

