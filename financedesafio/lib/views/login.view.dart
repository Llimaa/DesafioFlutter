import 'package:financedesafio/views/todo-list.view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _obscureText = true;

  void _togglePasswordStatus() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
        ),
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/images/login.png"),
            ),
            SizedBox(
              height: 100,
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.mail_outline),
                  labelText: "Email Address",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextFormField(
                obscureText: _obscureText,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.lock_outline),
                  labelText: "Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: _togglePasswordStatus,
                    color: Colors.grey,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Theme.of(context).accentColor,
              padding: EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(50.0),
              ),
              child: Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TodoListView(),
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    "Signup",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text(
                    "Forgot Password?",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
