import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kotaawan/model/product.dart';

class NewsUPdate extends StatefulWidget {
  @override
  _NewsUPdateState createState() => _NewsUPdateState();
}

class _NewsUPdateState extends State<NewsUPdate> {
  final String apiUrl =
      "https://dealer.kotaawan.com/ajax/getreligion/session01";

  Future<Product> fetchNewsUpdate() async {
    var result = await http.get(apiUrl);
    return Product.fromJson(json.decode(result.body));
    // return json.decode(result.body)['data'];
  }

  Future<Product> futureNewsUpdate;

  @override
  void initState() {
    super.initState();
    futureNewsUpdate = fetchNewsUpdate();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0,0,10,10),
        height: 200,
        width: 220,
        child: FutureBuilder<Product>(
            future: futureNewsUpdate,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data != null) {
                  List<Data> responseData = snapshot.data.data;
                  List<Widget> widgetss = [];
                  for (int i = 0; i < responseData.length; i++) {
                    var item = responseData[i];
                    widgetss;
                    widgetss.add(
                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                    '${item.date} - ${item.name}',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                    );
                  }
                  return ListView(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.all(10.0),
                    children: widgetss,
                  );
                }
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            )
    );
  }
}
