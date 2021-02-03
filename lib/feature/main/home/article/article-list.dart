import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kotaawan/model/product.dart';

class ArticleListPage extends StatefulWidget {
  @override
  _ArticleListPageState createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  final String apiUrl =
      "https://dealer.kotaawan.com/ajax/getreligion/session01";

  Future<Product> fetchArticleList() async {
    var result = await http.get(apiUrl);
    return Product.fromJson(json.decode(result.body));
    // return json.decode(result.body)['data'];
  }

  Future<Product> futureArticleList;

  @override
  void initState() {
    super.initState();
    futureArticleList = fetchArticleList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Colors.red),
            child: Text(
              'Kumpulan Article',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 130,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      // side: BorderSide(color: Colors.black),
                    ),
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.black54,
                    child: Text(
                      "Kategori",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(width: 70),
                Container(
                  width: 130,
                  // height: 100,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: new EdgeInsets.fromLTRB(7, 8, 7, 8),
                      hintText: 'Cari',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          borderSide: BorderSide(
                              color: Colors.red,
                              width: 0,
                              style: BorderStyle.none)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 450,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: FutureBuilder<Product>(
                  future: futureArticleList,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data != null) {
                        List<Data> responseData = snapshot.data.data;
                        List<Widget> widgetss = [];
                        for (int i = 0; i < responseData.length; i++) {
                          var item = responseData[i];
                          widgetss;
                          widgetss.add(
                            Wrap(
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Divider(
                                  color: Colors.black,
                                  height: 0,
                                  thickness: 0,
                                  indent: 0,
                                  endIndent: 0,
                                ),
                                InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      '${item.date} - ${item.name}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Divider(
                                  color: Colors.black,
                                  height: 0,
                                  thickness: 0,
                                  indent: 0,
                                  endIndent: 0,
                                ),
                              ],
                            ),
                          );
                        }
                        return ListView(
                            scrollDirection: Axis.vertical,
                            padding: EdgeInsets.all(10.0),
                            children: widgetss);
                      }
                    } return Center(
                        child: CircularProgressIndicator(),
                      );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
