import 'package:flutter/material.dart';

class BamPromotionPage extends StatefulWidget {
  @override
  _BamPromotionPageState createState() => _BamPromotionPageState();
}

class _BamPromotionPageState extends State<BamPromotionPage> {
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
              'Promotion',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey)
            ),

            // padding: EdgeInsets.all(10),
            child: Image.network('https://www.saibumi.com/img_artikel/79WhatsApp%20Image%202020-08-04%20at%2012.58.25.jpeg',
            ),
          ),
          SizedBox(height: 10,),
          Container(
            // padding: EdgeInsets.all(10),
            child: Image.network('https://asset.astra-honda.com/uploads/article/thumbnail/img-4644.png',
            ),
          ),SizedBox(height: 10,),
          Container(
            // padding: EdgeInsets.all(10),
            child: Image.network('https://asset.astra-honda.com/uploads/article/thumbnail/ahm-homepage-banner-pcx-sales-program-dec-feb-2021-1216x850-1.jpg',
            ),
          ),SizedBox(height: 10,),
          Container(
            // padding: EdgeInsets.all(10),
            child: Image.network('https://imgcdnblog.carbay.com/wp-content/uploads/2020/06/19143947/Bintang-Motor-Honda-PROMO-JAKARTA.jpg',
            ),
          ),SizedBox(height: 10,),
          Container(
            // padding: EdgeInsets.all(10),
            child: Image.network('https://www.wahanahonda.com/assets/upload/promo/PROMO_1610097021_b04980fffbfe994a55bd334175a98dbd.jpg',
            ),
          ),SizedBox(height: 10,),
          Container(
            // padding: EdgeInsets.all(10),
            child: Image.network('https://www.wahanahonda.com/assets/upload/promo/PROMO_1610096598_f844f6a20149633026f4b6fd8e84d9bb.jpg',
            ),
          ),SizedBox(height: 10,),
          Container(
            // padding: EdgeInsets.all(10),
            child: Image.network('https://medanbisnisdaily.com/imagesfile/201804/20180426211006_655.gif',
            ),
          ),SizedBox(height: 10,),
          Container(
            // padding: EdgeInsets.all(10),
            child: Image.network('https://medanbisnisdaily.com/imagesfile/201804/20180426211006_655.gif',
            ),
          ),SizedBox(height: 10,),
          Container(
            // padding: EdgeInsets.all(10),
            child: Image.network('https://medanbisnisdaily.com/imagesfile/201804/20180426211006_655.gif',
            ),
          ),SizedBox(height: 10,),
          Container(
            // padding: EdgeInsets.all(10),
            child: Image.network('https://medanbisnisdaily.com/imagesfile/201804/20180426211006_655.gif',
            ),
          ),SizedBox(height: 10,),
          Container(
            // padding: EdgeInsets.all(10),
            child: Image.network('https://medanbisnisdaily.com/imagesfile/201804/20180426211006_655.gif',
            ),
          ),

        ],
      )
    );
  }
}
