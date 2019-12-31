import 'package:flutter/material.dart';
import 'package:liquid_swipe/Constants/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

// Temporibus autem aut\n
// officiis debitis aut rerum\n
// necessitatibus

// Excepteur sint occaecat cupidatat\n
// non proident, sunt in\n
// culpa qui officia

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const TextStyle goldcoinGreyStyle = TextStyle(
      color: Colors.grey,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle goldCoinWhiteStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle greyStyle =
      TextStyle(fontSize: 40.0, color: Colors.grey, fontFamily: "Product Sans");
        static const TextStyle whiteStyle =
      TextStyle(fontSize: 40.0, color: Colors.white, fontFamily: "Product Sans");

  static const TextStyle boldStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.black,
    fontFamily: "Product Sans",
    fontWeight: FontWeight.bold,
  );

  static const TextStyle descriptionGreyStyle = TextStyle(
    color: Colors.grey,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

  static const TextStyle descriptionWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

  final pages = [
    Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "GoldCoin",
                  style: goldcoinGreyStyle,
                ),
                Text(
                  "Skip",
                  style: goldcoinGreyStyle,
                ),
              ],
            ),
          ),
          Image.asset("assets/img/firstImage.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Online",
                  style: greyStyle,
                ),
                Text(
                  "Gambling",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Temporibus autem aut\n"
                  "officiis debitis aut rerum\n"
                  "necessitatibus",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF55006c),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "GoldCoin",
                  style: goldCoinWhiteStyle,
                ),
                Text(
                  "Skip",
                  style: goldCoinWhiteStyle,
                ),
              ],
            ),
          ),
          Image.asset("assets/img/secondImage.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Online",
                  style: whiteStyle,
                ),
                Text(
                  "Gaming",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Excepteur sint occaecat cupidatat\n"
                  "non proident, sunt in\n"
                  "culpa qui officia",
                  style: descriptionWhiteStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
     Container(
      color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "GoldCoin",
                  style: goldCoinWhiteStyle,
                ),
                Text(
                  "Skip",
                  style: goldCoinWhiteStyle,
                ),
              ],
            ),
          ),
          Image.asset("assets/img/firstImage.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Online",
                  style: whiteStyle,
                ),
                Text(
                  "Gambling",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Temporibus autem aut\n"
                  "officiis debitis aut rerum\n"
                  "necessitatibus",
                  style: descriptionWhiteStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          enableLoop: true,
          fullTransitionValue: 300,
          enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
      ),
    );
  }
}
