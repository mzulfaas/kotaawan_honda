import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:kotaawan/model/product.dart';
import 'package:http/http.dart' as http;

class ProductDetailPage extends StatefulWidget {

  String img;
  String name;
  String description;
  String price;

  ProductDetailPage({Key key, this.img, this.name, this.price, this.description}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {


  final String apiUrl = "https://dealer.kotaawan.com/ajax/getreligion/session01";

  Future<Product> fetchDetailProduct() async {
    var result = await http.get(apiUrl);
    return Product.fromJson(json.decode(result.body));
    // return json.decode(result.body)['data'];
  }

  Future<Product> futureDetailProduct;
  @override
  void initState() {
    super.initState();
    futureDetailProduct = fetchDetailProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(175,0,10,0),
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
                'Products',
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
            children: [
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
                      child: Image.network('https://cf.shopee.co.id/file/7c1b1954e1fcd6b62ae291f2fd264d18'),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child: Image.network('https://cf.shopee.co.id/file/7c1b1954e1fcd6b62ae291f2fd264d18'),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child: Image.network('https://cf.shopee.co.id/file/7c1b1954e1fcd6b62ae291f2fd264d18'),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child: Image.network('https://cf.shopee.co.id/file/7c1b1954e1fcd6b62ae291f2fd264d18'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  '${widget.name} \nIDR ${widget.price}',
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
              GestureDetector(
                onTap: () {
                },
                child: Text(
                  "Lihat Produk Lainya",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

