import 'package:contatoWeb/my_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyB_5-dgE2lFQFFhjNjrI2M6bxEWHaAzVR4",
          authDomain: "contatoweb-ad87f.firebaseapp.com",
          projectId: "contatoweb-ad87f",
          storageBucket: "contatoweb-ad87f.appspot.com",
          messagingSenderId: "46700493452",
          appId: "1:46700493452:web:9b649532974b966d2f19a9",
          measurementId: "G-JFDC212RS2"));

  runApp(MyApp());
}
