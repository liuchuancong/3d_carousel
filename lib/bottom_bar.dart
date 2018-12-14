import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final scrollPercent;
  final cardCount;

  const BottomBar({Key key, this.scrollPercent = 0.0, this.cardCount})
      : super(key: key);
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Center(
              child: new Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
          ),
          new Expanded(
              child: new Container(
            width: double.infinity,
            height: 5.0,
            color: Colors.white,
            child: new ScrollerIndicator(
                cardCount: widget.cardCount,
                scrollerPercent: widget.scrollPercent),
          )),
          new Expanded(
            child: new Center(
              child: new Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ScrollerIndicator extends StatelessWidget {
  final cardCount;
  final scrollerPercent;
  const ScrollerIndicator({Key key, this.cardCount, this.scrollerPercent})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new CustomPaint(
      painter: new CardPainter(
          cardCount: cardCount, scrollerPercent: scrollerPercent),
      child: new Container(),
    );
  }
}

class CardPainter extends CustomPainter {
  final cardCount;
  final scrollerPercent;
  final Paint trackPaint;
  final Paint thumbPaint;
  CardPainter({this.cardCount, this.scrollerPercent})
      : trackPaint = new Paint()
          ..color = const Color(0xFF444444)
          ..style = PaintingStyle.fill,
        thumbPaint = new Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
        new RRect.fromRectAndCorners(
          new Rect.fromLTWH(
            0.0,
            0.0,
            size.width,
            size.height,
          ),
          topLeft: new Radius.circular(0.0),
          topRight: new Radius.circular(0.0),
          bottomLeft: new Radius.circular(0.0),
          bottomRight: new Radius.circular(0.0),
        ),
        trackPaint);
        final thumbWidth = size.width/cardCount;
        final thunbLeft = scrollerPercent * size.width;
        Path thumbPath = new Path();
        thumbPath.addRRect(new RRect.fromRectAndCorners(
          new Rect.fromLTWH(
            thunbLeft,
            0.0,
            thumbWidth,
            size.height,
          ),
          topLeft: new Radius.circular(3.0),
          topRight: new Radius.circular(3.0),
          bottomLeft: new Radius.circular(3.0),
          bottomRight: new Radius.circular(3.0),
        ),);
          canvas.drawPath(thumbPath, thumbPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
