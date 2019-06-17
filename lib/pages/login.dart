import 'package:dancr/common/app_card.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top:75, right: 10, left:10),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppCard(
              child: 
              Container(
                child: Column(children: <Widget>[
                  Text(
                "dance&crash",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.amber,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "first dance, then crash.",
                style: TextStyle(
                  fontSize: 12.5,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
                ],)
              ),
            ),
            AppCard(
              child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(labelText: "Email"),
                      ),
                      TextFormField(
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
                  child: Text("Sign Up", style: TextStyle(color: Theme.of(context).accentColor, fontWeight: FontWeight.w600)),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
