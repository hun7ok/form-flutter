import 'package:flutter/material.dart';

import 'main.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register Form",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Fullname",

                )
              ),
              TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email",

                  ),

              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Username",

                ),

              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",


                ),

              ),
              RaisedButton(
                  onPressed: () {

                  },
                  child: Text("Register"),
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => BaseForm()));
                  },
                  child: Text(
                      "Sudah Punya Akun Silahkan login",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red)
                  )
              )
            ],
          ),

        ),
      ),
    );
  }
}
