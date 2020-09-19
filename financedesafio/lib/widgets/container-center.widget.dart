import 'package:flutter/material.dart';

class ContainerCenter extends StatelessWidget {
  final String title;
  final DateTime date;
  ContainerCenter({
    this.title,
    this.date,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Container(
            child: Center(
              child: FlatButton(
                onPressed: () => {},
                color: Colors.transparent,
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 24,
                      ),
                    ),
                    Icon(Icons.notifications_none),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Text(
            date.toString().substring(0, 10),
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
      ],
    );
  }
}
