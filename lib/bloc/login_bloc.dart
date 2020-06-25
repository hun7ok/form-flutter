import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  final _namaLengkapController = BehaviorSubject<String>();
  final _usernameController = BehaviorSubject<String>();
// Add data to stream
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);
  Stream<String> get namaLengkapnya => _namaLengkapController.stream.transform(validatenamaLengkap);
  Stream<String> get akunUsername => _usernameController.stream.transform(validateuserAkun);
  Stream<bool> get submitValid => CombineLatestStream.combine2(email, password, (e, p) => true);
// change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;
  Function(String) get changeNama => _namaLengkapController.sink.add;
  Function(String) get changeUsername => _usernameController.sink.add;

  void submit() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;
    print('Email is $validEmail, and password is $validPassword');
  }

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}


final loginBloc = Bloc();
