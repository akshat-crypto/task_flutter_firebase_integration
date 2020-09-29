//import 'dart:js';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:t3_linux_firebase_integrtn/screens/signin.dart';
import 'package:t3_linux_firebase_integrtn/screens/linuxcmd.dart';
import 'package:t3_linux_firebase_integrtn/screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Hotreload());
}

class Hotreload extends StatelessWidget {
  build(BuildContext c1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "login",
      //initialRoute: "signin",
      routes: {
        "signin": (context) => Signin(),
        "login": (context) => Login(),
        "linuxcmd": (context) => Lcmd(),
      },
    );
  }
}
