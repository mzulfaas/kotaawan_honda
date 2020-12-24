import 'package:flutter/material.dart';

class GroupButtonService extends StatefulWidget {
  @override
  _GroupButtonServiceState createState() => _GroupButtonServiceState();
}

class _GroupButtonServiceState extends State<GroupButtonService> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Center(
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
                  child: Text("Booking \nService",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Service \nKunjungan",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Riwayat \nService",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),

            //ROW 2
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
                  child: Text("BAM \nSparepart",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("BAM \nPomotion",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("1000 \nPoint",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
