import 'package:Mobile_Recharge/WebViewPlugin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'WebViewPlugin.dart';

class PostPaid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Postpaid",
          style: GoogleFonts.exo2(fontSize: 25),
        ),
        titleSpacing: 0.0,
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.circular(0.0),
        child: Container(
//            color: Colors.redAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 1.18,
                child: ListView(
                  children: <Widget>[
                    Divider(
                      color: Colors.blue,
                      thickness: 2,
                    ),

                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => WebViewExample(
                                  title: "Jio Postpaid",
                                  selectedUrl:
                                      "https://www.jio.com/JioApp/index.html",
                                )));
                      },
                      leading: Image(
                        image: AssetImage("images/Jio.jpeg"),
                      ),
                      subtitle: Text("Recharge now"),
                      title: Text(
                        "Jio",
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
                                  title: "Airtel Postpaid",
                                  selectedUrl:
                                      "https://www.airtel.in/postpaid-bill-pay",
                                )));
                      },
                      leading: Image(
                        image: AssetImage("images/Airtel.jpeg"),
                      ),
                      subtitle: Text("Recharge now"),
                      title: Text(
                        "Airtel",
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
                      color: Colors.blue,
                      thickness: 2,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => WebViewExample(
                              title: "Vodafone Postpaid",
                              selectedUrl:
                              "https://paytm.com/recharge",
                            )));
                      },
                      leading: Image(
                        image: AssetImage("images/Vodafone.jpeg"),
                      ),
                      subtitle: Text("Recharge now"),
                      title: Text(
                        "Vodafone",
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
                                  title: "Idea Postpaid",
                                  selectedUrl:
                                      "https://care.ideacellular.com/wps/portal/account/express-paybill",
                                )));
                      },
                      leading: Image(
                        image: AssetImage("images/Idea.jpeg"),
                      ),
                      subtitle: Text("Recharge now"),
                      title: Text(
                        "Idea",
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
                                  title: "Tata Docomo Postpaid",
                                  selectedUrl:
                                      "https://www.mobikwik.com/tata-docomo-mobile-postpaid-bill-payment",
                                )));
                      },
                      leading: Image(
                        image: AssetImage("images/TataDomo.jpeg"),
                      ),
                      subtitle: Text("Recharge now"),
                      title: Text(
                        "Tata Docomo",
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
                                  title: "PayTm Recharge",
                                  selectedUrl: "https://paytm.com/recharge",
                                )));
                      },
                      leading: Image(
                        width: 60,
                        image: AssetImage(
                          "images/Paytm.jpeg",
                        ),
                      ),
                      subtitle: Text("Recharge now"),
                      title: Text(
                        "PayTm",
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
                                  title: "MobiKwik Recharge",
                                  selectedUrl: "https://m.mobikwik.com/login",
                                )));
                      },
                      leading: Image(
                        image: AssetImage("images/Mobikwik.jpeg"),
                      ),
                      subtitle: Text("Recharge now"),
                      title: Text(
                        "Mobikwik",
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
                                  title: "Amazon Recharge",
                                  selectedUrl:
                                      "https://www.amazon.in/hfc/mobileRecharge?ref=apay_dashboard",
                                )));
                      },
                      leading: Image(
                        image: AssetImage("images/Amezon.jpeg"),
                        height: 100.0,
                        width: 50.0,
                      ),
                      subtitle: Text("Recharge now"),
                      title: Text(
                        "Amazon Pay",
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Container(
//child: Container(
//alignment: Alignment(0.5, 1),
//child:FacebookBannerAd(
//placementId: "1048441625544616_1048442795544499",
//bannerSize: BannerSize.STANDARD,
//listener: (result, value) {
//switch (result) {
//case BannerAdResult.ERROR:
//print("Error: $value");
//break;
//case BannerAdResult.LOADED:
//print("Loaded: $value");
//break;
//case BannerAdResult.CLICKED:
//print("Clicked: $value");
//break;
//case BannerAdResult.LOGGING_IMPRESSION:
//print("Logging Impression: $value");
//break;
//}
//},
//),
//),
//),
