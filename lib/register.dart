import 'package:flutter/material.dart';
import 'package:formlogin/bloc/login_bloc.dart';

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
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                StreamBuilder<String>(
                  stream: loginBloc.namaLengkapnya,
                  builder: (context, snapshot) {
                    return TextFormField(
                      onChanged: loginBloc.changeNama,
                        decoration: InputDecoration(
                      hintText: "Nama Lengkap",
                      errorText: snapshot.error
                    ));
                  }
                ),
                StreamBuilder<String>(
                    stream: loginBloc.email,
                    builder: (context, snapshot) {
                      return TextFormField(
                        onChanged: loginBloc.changeEmail,
                        decoration: InputDecoration(
                            hintText: "Email", errorText: snapshot.error),
                      );
                    }),
                StreamBuilder<String>(
                  stream: loginBloc.akunUsername,
                  builder: (context, snapshot) {
                    return TextFormField(
                      onChanged: loginBloc.changeUsername,
                      decoration: InputDecoration(
                        hintText: "Username",
                        errorText: snapshot.error
                      ),
                    );
                  }
                ),
                StreamBuilder<String>(
                  stream: loginBloc.password,
                  builder: (context, snapshot) {
                    return TextFormField(
                      onChanged: loginBloc.changePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        errorText: snapshot.error
                      ),
                    );
                  }
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text("Register"),
                ),
                FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BaseForm()));
                    },
                    child: Text("Sudah Punya Akun Silahkan login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
