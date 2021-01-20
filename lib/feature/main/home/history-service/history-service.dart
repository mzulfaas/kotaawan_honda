import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryServicePage extends StatefulWidget {
  @override
  _HistoryServicePageState createState() => _HistoryServicePageState();
}

class _HistoryServicePageState extends State<HistoryServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(117,0,10,0),
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
              'Riwayat Service',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Image.asset('assets/images/ahass-logo.png'),
            ),
            SizedBox(
              height: 50,
              width: 400,
              child: ListView(
                padding: EdgeInsets.all(10),
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    child: Text('Riwayat Service',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    width: 150,
                    height: 100,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: new EdgeInsets.all(5),
                        hintText: 'Pilih Kendaraan',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              height:0,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0,),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Wrap(
                    children: [
                      Row(
                        children: [
                          Text('2011098 13 Nov 20 10.00'),
                          SizedBox(width: 10,),
                          Text('Rp 0',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                          ),
                          SizedBox(width: 20,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Lihat",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('E 1234 AG',
                          textAlign: TextAlign.center,),
                          SizedBox(width: 107,),
                          Text('Baru',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 17,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Batal",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black,
                        height:0,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('2011098 13 Nov 20 10.00'),
                          SizedBox(width: 10,),
                          Text('Rp 0',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 20,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Lihat",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('E 1234 AG',
                            textAlign: TextAlign.center,),
                          SizedBox(width: 107,),
                          Text('Baru',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 17,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Batal",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black,
                        height:0,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('2011098 13 Nov 20 10.00'),
                          SizedBox(width: 10,),
                          Text('Rp 0',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 20,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );

                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Lihat",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('E 1234 AG',
                            textAlign: TextAlign.center,),
                          SizedBox(width: 107,),
                          Text('Baru',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 17,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Batal",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black,
                        height:0,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('2011098 13 Nov 20 10.00'),
                          SizedBox(width: 10,),
                          Text('Rp 0',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 20,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Lihat",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('E 1234 AG',
                            textAlign: TextAlign.center,),
                          SizedBox(width: 107,),
                          Text('Baru',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 17,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Batal",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black,
                        height:0,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('2011098 13 Nov 20 10.00'),
                          SizedBox(width: 10,),
                          Text('Rp 0',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 20,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Lihat",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('E 1234 AG',
                            textAlign: TextAlign.center,),
                          SizedBox(width: 107,),
                          Text('Baru',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 17,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Batal",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black,
                        height:0,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('2011098 13 Nov 20 10.00'),
                          SizedBox(width: 10,),
                          Text('Rp 0',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 20,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Lihat",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('E 1234 AG',
                            textAlign: TextAlign.center,),
                          SizedBox(width: 107,),
                          Text('Baru',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 17,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Batal",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black,
                        height:0,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('2011098 13 Nov 20 10.00'),
                          SizedBox(width: 10,),
                          Text('Rp 0',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 20,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Lihat",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('E 1234 AG',
                            textAlign: TextAlign.center,),
                          SizedBox(width: 107,),
                          Text('Baru',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 17,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Batal",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black,
                        height:0,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('2011098 13 Nov 20 10.00'),
                          SizedBox(width: 10,),
                          Text('Rp 0',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 20,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Lihat",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('E 1234 AG',
                            textAlign: TextAlign.center,),
                          SizedBox(width: 107,),
                          Text('Baru',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 17,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Batal",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black,
                        height:0,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('2011098 13 Nov 20 10.00'),
                          SizedBox(width: 10,),
                          Text('Rp 0',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 20,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Lihat",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('E 1234 AG',
                            textAlign: TextAlign.center,),
                          SizedBox(width: 107,),
                          Text('Baru',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 17,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Batal",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black,
                        height:0,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('2011098 13 Nov 20 10.00'),
                          SizedBox(width: 10,),
                          Text('Rp 0',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 20,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Lihat",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('E 1234 AG',
                            textAlign: TextAlign.center,),
                          SizedBox(width: 107,),
                          Text('Baru',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 17,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Batal",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),SizedBox(height: 10,),
                      Divider(
                        color: Colors.black,
                        height:0,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('2011098 13 Nov 20 10.00'),
                          SizedBox(width: 10,),
                          Text('Rp 0',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 20,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Lihat",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('E 1234 AG',
                            textAlign: TextAlign.center,),
                          SizedBox(width: 107,),
                          Text('Baru',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 17,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Batal",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black,
                        height:0,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('2011098 13 Nov 20 10.00'),
                          SizedBox(width: 10,),
                          Text('Rp 0',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 20,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Lihat",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('E 1234 AG',
                            textAlign: TextAlign.center,),
                          SizedBox(width: 107,),
                          Text('Baru',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 17,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Batal",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.black,
                        height:0,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('2011098 13 Nov 20 10.00'),
                          SizedBox(width: 10,),
                          Text('Rp 0',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 20,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Lihat",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('E 1234 AG',
                            textAlign: TextAlign.center,),
                          SizedBox(width: 107,),
                          Text('Baru',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 17,),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => BookingServicePage()),
                              // );
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Batal",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
