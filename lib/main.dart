

import 'package:flutter/material.dart';

void main() =>runApp(BaseForm());


class BaseForm extends StatefulWidget {
  @override
  _BaseFormState createState() => _BaseFormState();
}

class _BaseFormState extends State<BaseForm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DataForm(),
    );
  }
}

class DataForm extends StatefulWidget {
  @override
  _DataFormState createState() => _DataFormState();
}

class _DataFormState extends State<DataForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form-Login"),
        leading: Icon(Icons.security),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(hintText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Password"),
                    ),
                    RaisedButton(
                      child: Text("Login"),
                      onPressed: () {},
                    )
                  ],
                )
            )
          ],
        ),
      )

    );
  }
}

