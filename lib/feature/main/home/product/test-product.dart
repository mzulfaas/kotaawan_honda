// import 'package:flutter/material.dart';
//
// SingleChildScrollView(
// child: FutureBuilder<Product>
// (
// future: futureDetailProduct,builder: (
//
// BuildContext context, AsyncSnapshot
// snapshot) {
// if (snapshot.hasData){
// if (snapshot.data != null){
// List<Data> responseData = snapshot.data.data;
// List<Widget> widgetss = [];
// for (int i=0;i<responseData.length;i++){
// var item = responseData[i];
// widgetss;
// widgetss.add(
// Column(
// children: [
// Container(
// padding: EdgeInsets.all(10),
// child: Image.network("https://dealer.kotaawan.com/img/articles/${item.img}",
// ),
// ),
// SizedBox(
// height: 100,
// width: 400,
// child: ListView(
// padding: EdgeInsets.all(10),
// physics: ClampingScrollPhysics(),
// shrinkWrap: true,
// scrollDirection: Axis.horizontal,
// children: [
// Container(
// // width: 100,
// // height: 100,
// child: Image.network('https://cf.shopee.co.id/file/7c1b1954e1fcd6b62ae291f2fd264d18'),
// ),
// SizedBox(width: 10,),
// Container(
// // width: 200,
// // height: 200,
// child: Image.network('https://cf.shopee.co.id/file/7c1b1954e1fcd6b62ae291f2fd264d18'),
// ),
// SizedBox(width: 10,),
// Container(
// // width: 200,
// // height: 200,
// child: Image.network('https://cf.shopee.co.id/file/7c1b1954e1fcd6b62ae291f2fd264d18'),
// ),
// SizedBox(width: 10,),
// Container(
// // width: 200,
// // height: 200,
// child: Image.network('https://cf.shopee.co.id/file/7c1b1954e1fcd6b62ae291f2fd264d18'),
// ),
// ],
// ),
// ),
// SizedBox(height: 10,),
// Container(
// padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
// child: Text(
// '${item.name} \nIDR ${item.price}',
// textAlign: TextAlign.center,
// style: TextStyle(
// color: Colors.black54,
// fontWeight: FontWeight.bold,
// ),
// ),
// ),
// SizedBox(height: 10,),
// Container(
// padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
// child: Text(item.description,
// textAlign: TextAlign.center,
// style: TextStyle(
// color: Colors.black54,
// ),
// ),
// ),
// SizedBox(height: 20,),
// GestureDetector(
// onTap: () {
// },
// child: Text(
// "Lihat Produk Lainya",
// textAlign: TextAlign.right,
// style: TextStyle(
// fontSize: 15,
// color: Colors.red,
// ),
// ),
// ),
// ],
// ),
// );
// }
// return Container(
// child: Column(
// children: widgetss,
// ),
// );
// }
// }
// return Center(
// child: CircularProgressIndicator(),
// );
// },
// )
// ,
// )
// ,