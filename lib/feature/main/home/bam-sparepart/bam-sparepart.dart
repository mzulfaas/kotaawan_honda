import 'package:flutter/material.dart';

class BamSparepartPage extends StatefulWidget {
  @override
  _BamSparepartPageState createState() => _BamSparepartPageState();
}

class _BamSparepartPageState extends State<BamSparepartPage> {
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
              'Spare Part',
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
            child: Image.network('https://imgx.gridoto.com/crop/11x47:587x390/750x500/photo/2019/10/10/2116162699.png',
            ),
          ),
          SizedBox(height: 20,),
          Wrap(
            children: [
              Text(
                'Harga Spare Part',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 20,),
              Container(
                width: 150,
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: new EdgeInsets.all(5),
                    hintText: 'cari nama part',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)
                    )
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
