import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:kotaawan/feature/main/home/product/detail-product.dart';
import 'package:http/http.dart' as http;
import 'package:kotaawan/model/product.dart';

class NewProduct extends StatefulWidget {
  @override
  _NewProductState createState() => _NewProductState();
}

class _NewProductState extends State<NewProduct> {

  final String apiUrl = "https://dealer.kotaawan.com/ajax/getreligion/session01";

  Future<Product> fetchProduct() async {
    var result = await http.get(apiUrl);
    return Product.fromJson(json.decode(result.body));
    // return json.decode(result.body)['data'];
  }

  Future<Product> futureProduct;
  @override
  void initState() {
    super.initState();
    futureProduct = fetchProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 220,
        child: Container(
          child: FutureBuilder<Product>(
            future: futureProduct,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData){
                if (snapshot.data != null){
                  List<Data> responseData = snapshot.data.data;
                  List<Widget> widgetss = [];
                  for(int i=0;i<responseData.length;i++) {
                    var item = responseData[i];
                    widgetss;
                    widgetss.add(
                      Column(
                        children: [
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.white)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ProductDetailPage(
                                  img: item.img,
                                  name: item.name,
                                  description: item.description,
                                  price: item.price,
                                )),
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
                          ),
                        ],
                      ),
                    ); //end widget
                  } // end forloop
                  return ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(10.0),
                      children: widgetss,
                  );
                }
              }
                return Center(
                  child: CircularProgressIndicator()
                );
            }
          ),
        )
    );
  }
}


