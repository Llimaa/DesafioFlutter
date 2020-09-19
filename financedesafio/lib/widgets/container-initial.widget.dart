import 'package:financedesafio/user.dart';
import 'package:flutter/material.dart';

class ContainerInitial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          new BoxShadow(
            color: Colors.black12,
            offset: new Offset(1, 2.0),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: ListTile(
              leading: Icon(
                Icons.short_text,
                size: 30,
              ),
              trailing: Icon(
                Icons.more_vert,
                size: 30,
              ),
            ),
          ),
          Image.asset(
            user.image,
            height: 100,
            width: 100,
          ),
          ListTile(
            title: Text(
              user.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            subtitle: Text(
              user.profession,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Expanded(
                    child: ListTile(
                      title: Text(
                        "\$890",
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        "Income",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                VerticalDivider(
                  thickness: 1,
                  indent: 17,
                  endIndent: 15,
                  color: Colors.black12,
                ),
                Container(
                  child: Expanded(
                    child: ListTile(
                      title: Text(
                        "\$5500",
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        "Expenses",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                VerticalDivider(
                  thickness: 1,
                  indent: 17,
                  endIndent: 15,
                  color: Colors.black12,
                ),
                Container(
                  child: Expanded(
                    child: ListTile(
                      title: Text(
                        "\$890",
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        "Loan",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
