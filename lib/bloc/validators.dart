import 'dart:async';

class Validators {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError('Isilah email anda dengan benar');
    }
  });

 final validatenamaLengkap =  StreamTransformer<String, String>.fromHandlers(handleData: (namalengkap, sink) {
    if (namalengkap.length < 5) {
      sink.addError('minimal nama lengkap 5 karakter');
      
    } else {
      sink.add(namalengkap);
    }
  });


   final validateuserAkun =  StreamTransformer<String, String>.fromHandlers(handleData: (userakun, sink) {
    if (userakun.length < 5) {
      sink.addError('Nama Tidak Boleh Sama Dengan Username');
      
    } else {
      sink.add(userakun);
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length < 6) {
      sink.addError('minimal password 6 karakter');
    } else {
      sink.add(password);
    }
  });
}
