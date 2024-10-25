import 'package:flutter/material.dart';
import 'package:login/login-register/data.dart';
import 'package:login/login-register/login_page.dart';
import 'package:login/profile.dart';
import 'package:login/login-register/register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login/Register Flutter',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),

      initialRoute: 'profile',
      routes: {
        '/': (context) {
          Data useData = Data(nama: 'Siti Fatimah Ayu Lesatri', email: 'fatimayu462@gmail.com');
          return LoginPage(useData: useData);
        },
        '/register': (context) => RegisterPage(),
        '/profile' : (context) {
          Data useData = Data(nama: 'Siti Fatimah Ayu Lesatri', email: 'fatimayu464@gmail.com');
          return ProfilePages(useData: useData);
        },
    },
);
}
}
