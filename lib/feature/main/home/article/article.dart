import 'package:flutter/material.dart';

import 'article-detail.dart';

class Article extends StatefulWidget {
  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
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
                    child: Image.network('https://cdn.akurat.co/images/uploads/images/akurat_20201110093144_0Pm5v0.jpg',
                      width: 210,
                      height: 140,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    'AHM Rilis All New Honda, \n Scoopy Generasi Terbaru',
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
                    child: Image.network('https://www.balipost.com/wp-content/uploads/2020/11/balipostcom_motor-honda-paling-direkomendasi-masyarakat_01.jpg',
                      width: 210,
                      height: 140,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    'Motor Honda Paling \nDirekomendasi Masyarakat',
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
                    child: Image.network('https://lh3.googleusercontent.com/proxy/NGUA_NkVgSlx1eOyPg9xoCnTGD-62XHXWOl2xrMsT3aIa3UK7-7UF8mUCjGJY2giMry6GwIHXwDp09EzW3HsCvgI',
                      width: 210,
                      height: 140,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    'Honda Cetak Sejarah:\n800 Kemenangan Grand Prix',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ]
        ),
    );
  }
}
// class Article extends StatelessWidget {
//
//   List<_ArticlePhoto> _article() {
//     return [
//       _ArticlePhoto(imageURL: 'https://bintangotomotif.com/wp-content/uploads/2015/09/cvt-mio.jpg',
//           title: 'Cara Merawat Motor Matic',
//           // subtitle: '',
//           featureString: 'Feature1'),
//       _ArticlePhoto(imageURL: 'https://bintangotomotif.com/wp-content/uploads/2015/09/cvt-mio.jpg',
//           title: 'Cara Merawat Motor Matic',
//           // subtitle: '',
//           featureString: 'Feature2'),
//       _ArticlePhoto(imageURL: 'https://bintangotomotif.com/wp-content/uploads/2015/09/cvt-mio.jpg',
//           title: 'Cara Merawat Motor Matic',
//           // subtitle: '',
//           featureString: 'Feature3'),
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
//     // this.subtitle,
//     this.featureString
//   });
//   final String imageURL;
//   final String title;
//   // final String subtitle;
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
//                     width: 210,
//                     height: 140,
//                     fit: BoxFit.cover),
//                 Positioned(
//                     top: 16,
//                     left: 140,
//                     child: Container(
//                       height: 25,
//                       width: 80,
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