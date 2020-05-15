

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:formlogin/register.dart';

import 'menu_utama.dart';

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
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String username = "", password = "";
  //String usr ="" , pass ="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
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
                      controller: usernameController,
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(hintText: "Password"),
                    ),
                    RaisedButton(
                      child: Text("Login"),
                      onPressed: () {
                        setState(() {
                          username = usernameController.text;
                          password = passwordController.text;
                        });
                        if(username=='admin' && password=='admin') {
                          Fluttertoast.showToast(
                            msg: "Anda bERHASIL",
                            toastLength: Toast.LENGTH_SHORT,
                            webBgColor: "#e74c3c",
                            timeInSecForIosWeb: 18,

                          );

                          Navigator.push(context, MaterialPageRoute(builder:
                              (context) => HomePage(username,password)));

                        }else
                          {

                            Fluttertoast.showToast(
                              msg: "Anda Tidak Terdaftar",
                              toastLength: Toast.LENGTH_SHORT,
                              webBgColor: "#e74c3c",
                              timeInSecForIosWeb: 5,
                            );

                          }

                      },
                    ),


                    FlatButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context) => Register()));
                        },
                        child: Text(
                          "Belum Punya Akun,Silahkan Daftar",
                           style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red)
                        )
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

