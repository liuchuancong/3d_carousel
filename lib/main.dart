import 'package:carousel/bottom_bar.dart';
import 'package:carousel/card_data.dart';
import 'package:carousel/card_flipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var scrollPercent = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: new Carsoule()
    );
  }
}

class Carsoule extends StatefulWidget {

  _CarsouleState createState() => _CarsouleState();
}

class _CarsouleState extends State<Carsoule> {
     var scrollPercent = 0.0;
  @override
  Widget build(BuildContext context) {
    return new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            width: double.infinity,
            height: 20.0,
          ),
          new Expanded(
              child: new CardFlipter(
                cards: heroCards,
                onScroll: (double scrollPercent){
                  setState(() {
                    this.scrollPercent = scrollPercent;
                    });
                }
              )),
          new BottomBar(
            scrollPercent:scrollPercent,
            cardCount:heroCards.length
          )
        ],
      );
  }
}