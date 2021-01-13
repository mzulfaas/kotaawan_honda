import 'package:flutter/material.dart';
import 'package:kotaawan/feature/main/home/product/detail-product.dart';

class NewProduct extends StatefulWidget {
  @override
  _NewProductState createState() => _NewProductState();
}

class _NewProductState extends State<NewProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 220,
        child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(10.0),
            children: <Widget>[
              Column(
                children: [
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductDetailPage()),
                      );
                    },
                    color: Colors.white,
                    textColor: Colors.white,
                    child: Image.network('https://cf.shopee.co.id/file/7c1b1954e1fcd6b62ae291f2fd264d18',
                      width: 210,
                      height: 140,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    'All New Beat CBS \nIDR 17.000.000',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.white,
                    child: Image.network('https://cdn.autoportal.com/bp-v3/img/models/3a/a/honda-cbr-250r-1521550264.png',
                      width: 210,
                      height: 140,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    'CBR 250 R \nIDR 66.000.000',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.white,
                    child: Image.network('https://cdn0-production-images-kly.akamaized.net/QbYVo9CS2CJxhhhFQJMnDmLQ4q4=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2747152/original/088219600_1552155797-AHM_Honda_Supra_X_125_FI._06_.jpg',
                      width: 210,
                      height: 140,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    'Supra X 125 FI \nIDR 18.000.000',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ]
        )
    );
  }
}


// class NewProduct extends StatelessWidget {
//
//   List<_ArticlePhoto> _article() {
//     return [
//       _ArticlePhoto(imageURL: 'https://cf.shopee.co.id/file/7c1b1954e1fcd6b62ae291f2fd264d18',
//           title: 'All New Beat CBS',
//           subtitle: 'IDR 17.600.000',
//         featureString: 'Feature1',
//           ),
//       _ArticlePhoto(imageURL: 'https://cdn.autoportal.com/bp-v3/img/models/3a/a/honda-cbr-250r-1521550264.png',
//           title: 'Honda CBR 250 R',
//           subtitle: 'IDR 66.000.000',
//         featureString: 'Feature2',
//           ),
//       _ArticlePhoto(imageURL: 'https://cdn0-production-images-kly.akamaized.net/KrsXDzdG2xAauxSJSGJVXDy4ctE=/640x480/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2747152/original/088219600_1552155797-AHM_Honda_Supra_X_125_FI._06_.jpg',
//           title: 'Supra X 125 FI',
//           subtitle: 'IDR 18.000.000',
//           featureString: 'Feature3',
//       ),
//     ];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 200,
//         width: 220,
//         child: ListView(
//             scrollDirection: Axis.horizontal,
//             padding: EdgeInsets.all(10.0),
//             children: _article().map<Widget> ( (photo) {
//               return _ArticleGridItem(featurePhoto: photo);//Feature(photo);
//             }).toList()
//         )
//     );
//   }
// }
//
// class _ArticlePhoto{
//   _ArticlePhoto({
//     this.imageURL,
//     this.title,
//     this.subtitle,
//     this.featureString
//   });
//   final String imageURL;
//   final String title;
//   final String subtitle;
//   final String featureString;
// }
//
// class _ArticleText extends StatelessWidget {
//   const _ArticleText(this.text, this.fontSize);
//   final String text;
//   final double fontSize;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: 14),
//       child: Text(text,
//           style: TextStyle(fontFamily: 'ConcertOne-Regular',
//               fontSize: fontSize)),
//     );
//   }
// }
//
// class _ArticleGridItem extends StatelessWidget {
//   _ArticleGridItem({
//     Key key,
//     @required this.featurePhoto
//   }) : super ( key: key);
//
//   final _ArticlePhoto featurePhoto;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget> [
//           Card(
//             semanticContainer: true,
//             clipBehavior: Clip.antiAliasWithSaveLayer,
//             child: Stack(
//               children: <Widget>[
//                 Image.network(featurePhoto.imageURL,
//                     width: 170,
//                     height: 140,
//                     fit: BoxFit.cover),
//                 Positioned(
//                     top: 16,
//                     left: 140,
//                     child: Container(
//                       height: 25,
//                       width: 380,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(3.0),
//                           color: Colors.black,//Color(0xff0F0F0F),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.3),
//                             )
//                           ]
//                       ),
//                       child: Center(
//                         child: Text( featurePhoto.featureString,
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     )
//                 )
//               ],
//             ),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0)
//             ),
//             elevation: 5,
//             margin: EdgeInsets.all(10),
//           ),
//           _ArticleText(featurePhoto.title,16),
//           // _ArticleText(featurePhoto.subtitle,12),
//         ]
//     );
//   }
//
// }