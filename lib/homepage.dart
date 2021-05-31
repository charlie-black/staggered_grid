import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

class ExampleStaggeredGridOne extends StatefulWidget {
  @override
  _ExampleStaggeredGridOneState createState() => _ExampleStaggeredGridOneState();
}

class _ExampleStaggeredGridOneState extends State<ExampleStaggeredGridOne> {
  final List<String> images = [
    "https://uae.microless.com/cdn/no_image.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/81aF3Ob-2KL._UX679_.jpg",
    "https://www.boostmobile.com/content/dam/boostmobile/en/products/phones/apple/iphone-7/silver/device-front.png.transform/pdpCarousel/image.jpg",
    "https://wallpaperaccess.com/full/26984.jpg",
    "https://ae01.alicdn.com/kf/HTB11tA5aiAKL1JjSZFoq6ygCFXaw/Unlocked-Samsung-GALAXY-S2-I9100-Mobile-Phone-Android-Wi-Fi-GPS-8-0MP-camera-Core-4.jpg_640x640.jpg",
    "https://media.ed.edmunds-media.com/gmc/sierra-3500hd/2018/td/2018_gmc_sierra-3500hd_f34_td_411183_1600.jpg",
    "https://hips.hearstapps.com/amv-prod-cad-assets.s3.amazonaws.com/images/16q1/665019/2016-chevrolet-silverado-2500hd-high-country-diesel-test-review-car-and-driver-photo-665520-s-original.jpg",
    "https://www.galeanasvandykedodge.net/assets/stock/ColorMatched_01/White/640/cc_2018DOV170002_01_640/cc_2018DOV170002_01_640_PSC.jpg",
    "https://media.onthemarket.com/properties/6191869/797156548/composite.jpg",
    "https://media.onthemarket.com/properties/6191840/797152761/composite.jpg",
  ];

  initState() {
    super.initState();
    disableCapture();
  }

  Future<void> disableCapture() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xf9f9f9),

      body: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.all(0.0),
          child: new Container( decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                topLeft: Radius.circular(10.0),
                bottomLeft:Radius.circular(10.0),
                bottomRight: Radius.circular(10.0)),
            color: Colors.white,
          ),
              // color: Color.fromARGB(
              //     210, (index + 2) * 20, (index + 2) * 30, (index + 2) * 40),
              child: new Center(
                child: new Container(
                  padding: EdgeInsets.all(8.0),
                  child: Image.network(
                    images[index],
                    fit: BoxFit.fill,   // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.,

                  ),
                ),
              )),
        ),
        staggeredTileBuilder: (int index) =>
        new StaggeredTile.count(2, index.isEven ? 3 : 2),
        mainAxisSpacing: 6.0,
        crossAxisSpacing: 6.0,
      ),
    );
  }
}