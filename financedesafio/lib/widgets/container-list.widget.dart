import 'package:financedesafio/stores/finance.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

DateTime todayDate;

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<FinanceStore>(context);
    return Column(
      children: <Widget>[
        Divider(
          height: 12,
          color: Theme.of(context).primaryColor,
        ),
        Container(
          height: 320,
          width: double.infinity,
          child: Observer(
            builder: (_) => ListView.builder(
              padding: EdgeInsets.only(
                left: 4,
              ),
              itemCount: store.finances.length,
              itemBuilder: (context, index) {
                var item = store.finances[index];
                return Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: ListTile(
                    title: Text(
                      item.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(item.description),
                    leading: Container(
                      padding: EdgeInsets.only(
                        top: 7,
                        left: 10,
                        right: 10,
                        bottom: 7,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color.fromARGB(249, 229, 232, 249),
                      ),
                      child: Icon(
                        Icons.arrow_upward,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    trailing: Text(
                      "\$" + item.total.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
