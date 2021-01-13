import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kotaawan/feature/main/home/article/article-list.dart';

class ArticleDetailPage extends StatefulWidget {
  @override
  _ArticleDetailPageState createState() => _ArticleDetailPageState();
}

class _ArticleDetailPageState extends State<ArticleDetailPage> {
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
              child: Image.network('https://cdn.akurat.co/images/uploads/images/akurat_20201110093144_0Pm5v0.jpg',
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
                    child: Image.network('https://cdn.akurat.co/images/uploads/images/akurat_20201110093144_0Pm5v0.jpg'),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    // width: 200,
                    // height: 200,
                    child: Image.network('https://cdn.akurat.co/images/uploads/images/akurat_20201110093144_0Pm5v0.jpg'),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    // width: 200,
                    // height: 200,
                    child: Image.network('https://cdn.akurat.co/images/uploads/images/akurat_20201110093144_0Pm5v0.jpg'),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    // width: 200,
                    // height: 200,
                    child: Image.network('https://cdn.akurat.co/images/uploads/images/akurat_20201110093144_0Pm5v0.jpg'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                  'AHM Rilis All New Honda, \n Scoopy Generasi Terbaru',
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
              child: Text('akdhkahdkhakdhahd'
                  'sahdhkasdadhkadkkdah'
                  'aHDKAKdkahdksdgagDJGDSDHOW'
                  'DKAHDKADHIAHWDIHAHDADKJAHDHHH'
                  'khfshafhfhsoifhoshfoihsoihfoshfo'
                  'kkfwfiohoshfoshoifhiofhiohfofhoifhofhofh'
                  'saahfishifhsoihfsoihfoihfoihoifhoifhio'
                  'padding: EdgeInsets.fromLTRB(10, 0, 10, 0),'
                  'aksndkandjknkjnkaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                  'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                  'dddddddddddddddddddddddddddddddddddddddddddddd'
                  'ddagJDGAJgdagidgigdgdgugdgefbwehfiehoihoihifhiwh'
                  'akdhiywiyoidhoiyd8hoidohoiwyohdowhoihohoihoihwoihdy'
                  'oqhdihhdhdohdohodhoihdoihdyhdy8'
                  'asbdjsjadddddddddddddyugqwyugeugugdugwuguagugugugugudyg'
                  'dhadgigugedabihdeoihoieyihoidhiwhoiyhiohdoidhiohddoihdoihdo'
                  'ishdihawigdugwadigaihdojqwopjofpjpowjopohihio',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
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

          ],
        ),
      )
    );
  }
}

