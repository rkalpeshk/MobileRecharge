import 'dart:async';
import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'PrePaid.dart';
import 'PostPaid.dart';
import 'Dth.dart';
import 'WebViewPlugin.dart';
import 'splash.dart';

import 'package:facebook_audience_network/facebook_audience_network.dart';

Future main() async {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "pre": (BuildContext context) => PrePaid(),
        "post": (BuildContext context) => PostPaid(),
        "dth": (BuildContext context) => Dth(),
        "home": (BuildContext context) => HomePage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime backbuttonpressedTime;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FacebookBannerAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1.0,
        titleSpacing: 0.0,
        title: Text(
          "Reachrge & Bill Payment",
          style: GoogleFonts.exo2(
            fontSize: 24.0,
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 10.0,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text(
                "Mobile Recharge App",
                style: GoogleFonts.abhayaLibre(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
              accountName: Text("BluePointer",
                  style: GoogleFonts.courgette(
                    fontSize: 40.0,
                    color: Colors.white,
                  )),
            ),
            Container(
//              color: Colors.cyan,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  dense: true,
                  onTap: () => Navigator.of(context).pop(),
                  leading: Icon(
                    Icons.home,
                    color: Colors.blue,
                    size: 20.0,
                  ),
                  title: Text(
                    "Home",
                    style: GoogleFonts.courgette(
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.blue,
              thickness: 2,
            ),
            Container(
//              color: Colors.cyan,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  dense: true,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => WebViewExample(
                              title: "Our product",
                              selectedUrl:
                                  "https://play.google.com/store/apps/developer?id=Bluepointer.pvt.ltd&hl=en",
                            )));
                  },
                  leading: Icon(
                    Icons.apps,
                    color: Colors.blue,
                    size: 20.0,
                  ),
                  title: Text(
                    "Our other product",
                    style: GoogleFonts.courgette(
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.blue,
              thickness: 2,
            ),
            Container(
//              color: Colors.cyan,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  dense: true,
                  onTap: () => exit(0),
                  leading: Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                    size: 20.0,
                  ),
                  title: Text(
                    "Exit app",
                    style: GoogleFonts.courgette(
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
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

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height /1.5,
              color: Colors.white10,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: 300,
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    onPressed: () {
                      FacebookInterstitialAd.loadInterstitialAd(
                        placementId: "1048441625544616_1138735593181885",
                        listener: (result, value) {
                          if (result == InterstitialAdResult.LOADED){
                            FacebookInterstitialAd.showInterstitialAd();
                          }
                        },
                      );
                        Navigator.of(context).pushNamed("pre");
                        },
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Text(
                      "Prepaid Recharge",
                      style: GoogleFonts.abhayaLibre(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  MaterialButton(
                    minWidth: 300,
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    onPressed: () {
                      FacebookInterstitialAd.loadInterstitialAd(
                        placementId: "1048441625544616_1138735593181885",
                        listener: (result, value) {
                          if (result == InterstitialAdResult.LOADED) {
                            FacebookInterstitialAd.showInterstitialAd();
                          }
                        },
                      );
                      Navigator.of(context).pushNamed("post");
                    },
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Text(
                      "Postpaid Recharge",
                      style: GoogleFonts.abhayaLibre(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  MaterialButton(
                    minWidth: 300,
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    onPressed: () {FacebookInterstitialAd.loadInterstitialAd(
                      placementId: "1048441625544616_1138735593181885",
                      listener: (result, value) {
                        if (result == InterstitialAdResult.LOADED){
                          FacebookInterstitialAd.showInterstitialAd();
                        }
                      },
                    );
                    Navigator.of(context).pushNamed("dth");
                    },

                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Text(
                      "Dth Recharge",
                      style: GoogleFonts.abhayaLibre(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child:FacebookNativeAd(
                      placementId: "1048441625544616_1384656341923141",
                      adType: NativeAdType.NATIVE_BANNER_AD,
                      bannerAdSize: NativeBannerAdSize.HEIGHT_120,
                      width: double.infinity,
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
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 0.0,
                    child: WillPopScope(
                      onWillPop: onWillpop,
                      child: Center(
                        child: Text(""),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //double click to exit wala container
          ],
        ),
      ),
    );
  }

  Future<bool> onWillpop() async {
    DateTime currentTime = DateTime.now();
    bool backButton = backbuttonpressedTime == null ||
        currentTime.difference(backbuttonpressedTime) > Duration(seconds: 3);

    if (backButton) {
      backbuttonpressedTime = currentTime;
      Fluttertoast.showToast(
        msg: "Doble Click to exit app",
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );
      return false;
    }
    return true;
  }
}


//
//Container(
//alignment: Alignment(0.5, 1),
//child: FacebookBannerAd(
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