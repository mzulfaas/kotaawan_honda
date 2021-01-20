import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsUPdate extends StatefulWidget {
  @override
  _NewsUPdateState createState() => _NewsUPdateState();
}

class _NewsUPdateState extends State<NewsUPdate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
        height: 200,
        width: 220,
        child: ListView(
            scrollDirection: Axis.vertical,
            // padding: EdgeInsets.all(10.0),
            children: <Widget>[
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8,0,0,0),
                  child: Text(
                    '30 Nov 2020 - Promo BAM Honda Community (BAM-HC)',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8,0,0,0),
                  child: Text(
                    '30 Nov 2020 - Promo BAM Honda Community (BAM-HC)',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8,0,0,0),
                  child: Text(
                    '30 Nov 2020 - Promo BAM Honda Community (BAM-HC)',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ]
        )
    );
  }
}


