import 'package:financedesafio/stores/finance.store.dart';
import 'package:financedesafio/themes/app.theme.dart';
import 'package:financedesafio/views/login.view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FinanceStore>.value(
          value: FinanceStore(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Desafio',
        theme: appTheme(),
        home: LoginView(),
      ),
    );
  }
}
