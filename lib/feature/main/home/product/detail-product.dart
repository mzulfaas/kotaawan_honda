import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(175,0,10,0),
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
                'Products',
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
                child: Image.network('https://cf.shopee.co.id/file/7c1b1954e1fcd6b62ae291f2fd264d18',
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
                      child: Image.network('https://cf.shopee.co.id/file/7c1b1954e1fcd6b62ae291f2fd264d18'),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      // width: 200,
                      // height: 200,
                      child: Image.network('https://cf.shopee.co.id/file/7c1b1954e1fcd6b62ae291f2fd264d18'),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      // width: 200,
                      // height: 200,
                      child: Image.network('https://cf.shopee.co.id/file/7c1b1954e1fcd6b62ae291f2fd264d18'),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      // width: 200,
                      // height: 200,
                      child: Image.network('https://cf.shopee.co.id/file/7c1b1954e1fcd6b62ae291f2fd264d18'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'All New Beat CBS \nIDR 17.000.000',
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
                },
                child: Text(
                  "Lihat Produk Lainya",
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

