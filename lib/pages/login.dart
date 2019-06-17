import 'package:dancr/common/app_card.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppCard(
              borderStyle: Border.all(
                color: Colors.pink,
                width: 2,
              ),
              boxShadowColor: Colors.pinkAccent,
                child: Text(
              "dancr",
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.grey,
               ),
               textAlign: TextAlign.center,
            ),
            ),
            AppCard(child: Container(
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
                        color : Colors.pinkAccent,
                        onPressed: (){},
                        child: Text("Login", style: TextStyle(color: Colors.white),)
                      )
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                        onPressed: (){},
                        child: Text("Forgot Password?")
                      )
                    ),
              ],
              )
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Text("Don't have an account yet?"),
              FlatButton(
                onPressed: (){},
                child: Text("Sign Up"),)
            ],)
          ],
        ),
      ),
    );
  }
}
