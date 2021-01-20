import 'package:flutter/material.dart';
import 'package:kotaawan/feature/main/home/history-service/history-service.dart';

class BookingServicePage extends StatefulWidget {
  @override
  _BookingServicePageState createState() => _BookingServicePageState();
}

class _BookingServicePageState extends State<BookingServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(100,0,10,0),
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
              'Booking Service',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Container(
            // padding: EdgeInsets.all(10),
            child: Image.network('https://1.bp.blogspot.com/-k7_9oJTuVXU/XRb3N7uVw0I/AAAAAAAAB7c/klAxSpPCJHwbLCAGWb0BDoXP_gvOs7kngCLcBGAs/s1600/Booking%2BService%2BAhass%2B00579%2Bgaruda%2Bmotor%2Bbanyuwangi.jpg',
            ),
          ),
          SizedBox(height: 10,),
          Text('Form Booking Service',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.fromLTRB(45, 0, 45, 0),
            child: TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Nama Pemilik',
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.fromLTRB(45, 0, 45, 0),
            child: TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Pilih Kendaraan',
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.fromLTRB(45, 0, 45, 0),
            child: TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Pilih Tanggal',
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.fromLTRB(45, 0, 45, 0),
            child: TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Pilih Jam',
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.fromLTRB(45, 0, 45, 0),
            child: TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Pilih Staff',
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.red)
              ),
              color: Colors.red,
              onPressed: (){

              },
              child: Text(
                'Kirim',
                style: TextStyle(
                  color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HistoryServicePage()),
              );
            },
            child: Text("Riwayat Service",
              style: TextStyle(
                fontSize: 17,
                color: Colors.red,
              ),
              textAlign: TextAlign.right,),
          ),
          SizedBox(height: 30,),
        ],
      ),

    );
  }
}
