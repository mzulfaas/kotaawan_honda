import 'package:flutter/material.dart';

class ArticleListPage extends StatefulWidget {
  @override
  _ArticleListPageState createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(100,0,0,0),
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
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Wrap(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Kategori",
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 100),
                // RaisedButton(
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(18.0),
                //       side: BorderSide(color: Colors.red)),
                //   onPressed: () {},
                //   color: Colors.red,
                //   textColor: Colors.white,
                //   child: Text("Service \nKunjungan",
                //     style: TextStyle(fontSize: 14),
                //     textAlign: TextAlign.center,
                //   ),
                // ),
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Cari",
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  '30 Nov 2020 - Promo BAM Honda Community (BAM-HC)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  '30 Nov 2020 - Promo BAM Honda Community (BAM-HC)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  '30 Nov 2020 - Promo BAM Honda Community (BAM-HC)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
