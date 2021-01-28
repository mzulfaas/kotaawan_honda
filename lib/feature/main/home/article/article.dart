import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:kotaawan/model/product.dart';
import 'article-detail.dart';
import 'package:http/http.dart' as http;

class Article extends StatefulWidget {
  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {

  final String apiUrl = "https://dealer.kotaawan.com/ajax/getreligion/session01";

  Future<Product> fetchArticle() async {
    var result = await http.get(apiUrl);
    return Product.fromJson(json.decode(result.body));
    // return json.decode(result.body)['data'];
  }

  Future<Product> futureArticle;
  @override
  void initState() {
    super.initState();
    futureArticle = fetchArticle();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 220,
        child: FutureBuilder<Product>(
          future: futureArticle,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData){
              if(snapshot.data != null){
                List<Data> responseData = snapshot.data.data;
                List<Widget> widgetss =[];
                for (int i=0;i<responseData.length;i++){
                  var item =responseData[i];
                  widgetss;
                  widgetss.add(
                    Column(
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.white)
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ArticleDetailPage()),
                            );
                          },
                          color: Colors.white,
                          textColor: Colors.white,
                          child: Image.network("https://dealer.kotaawan.com/img/articles/${item.img}",
                            width: 210,
                            height: 140,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          '${item.name} \nIDR ${item.price}',
                          textAlign: TextAlign.center,
                        )
                      ],
                    )
                  );
                }
                return ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(10.0),
                    children: widgetss,
                );
              }
            }else {
              return Center(
                  child: CircularProgressIndicator()
              );
            }
          }
        ),
    );
  }
}