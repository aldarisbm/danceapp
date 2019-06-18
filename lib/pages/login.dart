import 'package:danceapp/common/app_card.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: EdgeInsets.only(top: 75, right: 10, left: 10),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppCard(
              borderRadius: BorderRadius.circular(7.5),
              child: Container(
                  child: Column(
                children: <Widget>[
                  Text(
                    "dance&crash",
                    style: TextStyle(
                      fontFamily: "Mali",
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "dance, sleep, rinse, repeat",
                    style: TextStyle(
                      fontSize: 12.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
            ),
            AppCard(
              borderRadius: BorderRadius.circular(7.5),
              child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(labelText: "Email"),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(labelText: "Password"),
                      ),
                      Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 20.0),
                          child: FlatButton(
                              color: Theme.of(context).primaryColor,
                              onPressed: () {},
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ))),
                      Container(
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                              onPressed: () {},
                              child: Text("Forgot Password?"))),
                    ],
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account yet? "),
                FlatButton(
                  onPressed: () {},
                  child: Text("Sign Up",
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.w600)),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
