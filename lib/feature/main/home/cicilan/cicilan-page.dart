import 'package:flutter/material.dart';

class CicilanPage extends StatefulWidget {
  @override
  _CicilanPageState createState() => _CicilanPageState();
}

class _CicilanPageState extends State<CicilanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(150,0,10,0),
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
              'Simulasi Cicilan',
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
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 130,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        // side: BorderSide(color: Colors.black),
                      ),
                      onPressed: () {},
                      color: Colors.white,
                      textColor: Colors.black54,
                      child: Text(
                        "Leasing",
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 100,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        // side: BorderSide(color: Colors.black),
                      ),
                      onPressed: () {},
                      color: Colors.white,
                      textColor: Colors.black54,
                      child: Text(
                        "DP",
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    // width: ,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        // side: BorderSide(color: Colors.black),
                      ),
                      onPressed: () {},
                      color: Colors.white,
                      textColor: Colors.black54,
                      child: Text(
                        "Bulan",
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Tipe Kendaraan: Honda Beat 125cc",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
