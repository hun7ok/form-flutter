import 'package:flutter/material.dart';
import 'package:formlogin/main.dart';

class HomePage extends StatefulWidget {
  String username1;
  String password1;
  HomePage(this.username1,this.password1);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEST"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Center (
          child: Column(
            children: <Widget>[
              Text(
                "Username "+widget.username1,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Password "+widget.password1,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => BaseForm()));
                  },
                  child: Text("Logout"),

              )

            ],
          ),
        ),
      ),
    );
  }
}
