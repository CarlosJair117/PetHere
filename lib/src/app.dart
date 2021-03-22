import 'package:flutter/material.dart';
import 'package:pet_here/src/pages/create_account.dart';
import 'package:pet_here/src/pages/home.dart';
import 'package:pet_here/src/pages/login.dart';


class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: Center(child: Login(),),
      initialRoute: "/",
      routes: {
        "/":(BuildContext context) => Login(),
        "account":(BuildContext context) => Account(),
        "home": (BuildContext context) => HomePage(),
      },
    );
  }
}