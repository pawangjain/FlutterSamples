import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:teste_flutter/widgets/login.dart';
import 'dart:convert';
import 'dart:io';
import 'package:dson/dson.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginWidget();
  }
}

class LoginWidget extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Tezine App',
        home: new Scaffold(
            backgroundColor: new Color.fromRGBO(255, 179, 0, 1.0),
            appBar: new AppBar(
              title: new Text('Login'),
            ),
            body: new Center(
                child: new Container(
                    height: 200.0,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(30.0),
                    child: new Column(children: [
                      new TextField(
                        decoration: new InputDecoration(hintText: 'usuário'),
                      ),
                      new TextField(
                          decoration: new InputDecoration(hintText: 'senha')),
                      new RaisedButton(
                        onPressed: () {
                          this.btnEntrarClicked();
                        },
                        child: new Text('ENTRAR'),
                      )
                    ])))));
  }

  void btnEntrarClicked() async {
    var httpClient = new HttpClient();
    var request =
        await httpClient.get("10.20.104.20", 5000, "/v1/Uses/Authenticate");
    var response = await request.close();
    var responseBody = await response.transform(UTF8.decoder).join();
    print('auth result:' + fromJson(responseBody, bool));
  }
}
