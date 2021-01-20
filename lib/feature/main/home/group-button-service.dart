import 'package:flutter/material.dart';
import 'package:kotaawan/Point/Point-Page.dart';
import 'package:kotaawan/feature/main/home/bam-promotion/bam-promotion.dart';
import 'package:kotaawan/feature/main/home/bam-sparepart/bam-sparepart.dart';
import 'package:kotaawan/feature/main/home/booking-service/booking-service.dart';
import 'file:///C:/Users/Zulfa/Documents/Android%20Studio%20Project/kotaawan/lib/feature/main/home/visiting-service/visiting-service.dart';
import 'package:kotaawan/feature/main/home/history-service/history-service.dart';

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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BookingServicePage()),
                    );
                  },
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
                      borderRadius: BorderRadius.circular(20,),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VisitingServicePage()
                        ),
                    );
                  },
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HistoryServicePage()),
                    );
                  },
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BamSparepartPage()
                        ),
                    );
                  },
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BamPromotionPage()
                        ),
                    );
                  },
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PointPage()),
                    );
                  },
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
