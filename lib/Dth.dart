import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'MyWebView.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'WebViewPlugin.dart';

class Dth  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dth Recharge",
          style: GoogleFonts.exo2(
            fontSize: 25,
          ),
        ),
        titleSpacing: 0.0,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/1.18,
            child: ListView(
              children: <Widget>[
                Divider(
                  color: Colors.blue ,
                  thickness: 2,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => WebViewExample(
                          title: "AirtelTv Recharge",
                          selectedUrl: "https://www.airtel.in/dth-recharge",
                        )));
                  },
                  leading: Image(
                    image: AssetImage("images/AirtelDth.jpeg"),
                  ),
                  subtitle: Text("Recharge now"),
                  title: Text("Airtel Tv",
                    style: GoogleFonts.abhayaLibre(
                      fontSize: 35.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                color: Colors.blue ,
                  thickness: 2,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => WebViewExample(
                          title: "TataSky Recharge",
                          selectedUrl: "https://tsky.in/Recharge/QuickRecharge",
                        )));
                  },
                  leading: Image(
                    image: AssetImage("images/TataSky.jpeg"),
                  ),
                  subtitle: Text("Recharge now"),
                  title: Text("TataSky",
                    style: GoogleFonts.abhayaLibre(
                      fontSize: 35.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.blue ,
                  thickness: 2,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => WebViewExample(
                          title: "DishTv Recharge",
                          selectedUrl: "https://www.dishtv.in/Pages/Instant-Recharge-Payment.aspx",
                        )));
                  },
                  leading: Image(
                    image: AssetImage("images/DishTv.jpeg"),
                  ),
                  subtitle: Text("Recharge now"),
                  title: Text("Dish Tv",
                    style:GoogleFonts.abhayaLibre(
                      fontSize: 35.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.blue ,
                  thickness: 2,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: FacebookNativeAd(
                    placementId: "1048441625544616_1370002246721884",
                    adType: NativeAdType.NATIVE_AD,
                    width: double.infinity,
                    height: 300,
                    backgroundColor: Colors.blue,
                    titleColor: Colors.white,
                    descriptionColor: Colors.white,
                    buttonColor: Colors.deepPurple,
                    buttonTitleColor: Colors.white,
                    buttonBorderColor: Colors.white,
                    listener: (result, value) {
                      print("Native Ad: $result --> $value");
                    },
                  ),
                ),
                Divider(
                  color: Colors.blue ,
                  thickness: 2,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => WebViewExample(
                          title: "Reliance Dth Recharge",
                          selectedUrl: "https://paytm.com/dth-recharge",
                        )));
                  },
                  leading: Image(
                    image: AssetImage("images/RelianceTv.jpeg"),
                  ),
                  subtitle: Text("Recharge now"),
                  title: Text("Reliance Tv",
                    style: GoogleFonts.abhayaLibre(
                      fontSize: 35.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.blue ,
                  thickness: 2,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => WebViewExample(
                          title: "MobiKwik Dth Recharge",
                          selectedUrl: "https://www.mobikwik.com/dth-recharge",
                        )));
                  },
                  leading: Image(
                    image: AssetImage("images/Mobikwik.jpeg"),
                  ),
                  subtitle: Text("Recharge now"),
                  title: Text("Mobikwik",
                    style: GoogleFonts.abhayaLibre(
                      fontSize: 35.0,
                      color: Colors.black,
                    ),
                  ),
                ),

                Divider(
                  color: Colors.blue,
                  thickness: 2,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => WebViewExample(
                          title: "PayTm Dth Recharge",
                          selectedUrl: "https://paytm.com/dth-recharge",
                        )));
                  },
                  leading: Image(
                    width: 60.0,
                    image: AssetImage("images/Paytm.jpeg"),
                  ),
                  subtitle: Text("Recharge now"),
                  title: Text("PayTm Recharge",
                    style: GoogleFonts.abhayaLibre(
                      fontSize: 35.0,
                      color: Colors.black,
                    ),
                ),
                ),
                Divider(
                  color: Colors.blue ,
                  thickness: 2,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => WebViewExample(
                          title: "Amazon Dth Recharge",
                          selectedUrl: "https://www.amazon.in/hfc/dth?ref=apay_dashboard",
                        )));
                  },
                  leading: Image(
                    image: AssetImage("images/Amezon.jpeg"),
                    width: 60.0,
                  ),
                  subtitle: Text("Recharge now"),
                  title: Text("Amazon",
                    style: GoogleFonts.abhayaLibre(
                      fontSize: 35.0,
                      color: Colors.black,
                    ),),
                ),
                Divider(
                  color: Colors.blue ,
                  thickness: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
