import 'package:flutter/material.dart';

class AppCard extends StatefulWidget {
  final Widget child;
  final Border borderStyle;
  final Color boxShadowColor;

  AppCard(
      {Key key, @required this.child, this.borderStyle, this.boxShadowColor})
      : super(key: key);

  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Card(
          margin: EdgeInsets.all(20.0),
          color: Colors.white,
          child: new Container(
            padding: EdgeInsets.all(20.0),
            child: widget.child,
            decoration: new BoxDecoration(
                border: widget.borderStyle ??
                    Border.all(color: Theme.of(context).primaryColor, width: 2),
                color: Colors.white,
                boxShadow: [
                  new BoxShadow(
                      color: widget.boxShadowColor ?? Theme.of(context).accentColor,
                      offset: Offset(5.0, 5.0))
                ]),
          ),
        )
      ],
    );
  }
}
