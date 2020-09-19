import 'package:financedesafio/controllers/finance.controller.dart';
import 'package:financedesafio/stores/finance.store.dart';
import 'package:financedesafio/widgets/container-center.widget.dart';
import 'package:financedesafio/widgets/container-initial.widget.dart';
import 'package:financedesafio/widgets/navbar.widget.dart';
import 'package:financedesafio/widgets/container-list.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<FinanceStore>(context);
    final financeController = new FinanceController(store);

    financeController.getFinances();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.only(
            top: 50,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            children: <Widget>[
              ContainerInitial(),
              Divider(
                height: 12,
                color: Theme.of(context).primaryColor,
              ),
              ContainerCenter(date: DateTime.now(), title: "Overview"),
              TodoList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
