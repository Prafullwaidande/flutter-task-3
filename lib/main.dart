
import 'package:firebase_app/screen/chat.dart';
import 'package:firebase_app/screen/home.dart';
import 'package:firebase_app/screen/login.dart';
import 'package:firebase_app/screen/reg.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:http/http.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyHome(),
    theme: ThemeData.dark(),
    initialRoute: "home",
    routes: {
      "home": (context) => MyHome(),
      "reg": (context) => MyReg(),
      "log": (context) => MyLog(),
      "chat": (context) => MyChat(),
    },
  ),
  );
}




