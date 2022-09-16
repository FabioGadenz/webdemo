import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int primary;

    return MaterialApp(
      /* theme: ThemeData(
        primaryColor: Color.fromARGB(255, 64, 65, 64),
        
       // primarySwatch: Color.fromARGB(255, 42, 43, 42),
      ), */
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("ERRO");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return MyHomePage(title: 'site inicial');
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 85, 85, 84),
      /* appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 42, 43, 42),
        title: Text(widget.title),
      ), */
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fundo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 180,
                width: 180,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 26,
                width: 130,
                child: FloatingActionButton.extended(
                  backgroundColor: Color.fromARGB(255, 73, 73, 73),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  label: Text(
                    'WhatsApp',
                    style: TextStyle(fontSize: 10),
                  ),
                  icon: Image.asset(
                    "images/whatsapp.png",
                    height: 22,
                    width: 22,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 25,
                width: 130,
                child: FloatingActionButton.extended(
                  backgroundColor: Color.fromARGB(255, 73, 73, 73),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  label: Text(
                    'Instagram',
                    style: TextStyle(fontSize: 10),
                  ),
                  icon: Image.asset(
                    "images/instagram.png",
                    height: 22,
                    width: 22,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 25,
                width: 130,
                child: FloatingActionButton.extended(
                  backgroundColor: Color.fromARGB(255, 73, 73, 73),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  label: Text(
                    'Maps',
                    style: TextStyle(fontSize: 10),
                  ),
                  icon: Image.asset(
                    "images/maps.png",
                    height: 22,
                    width: 22,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 26,
                width: 130,
                child: FloatingActionButton.extended(
                  backgroundColor: Color.fromARGB(255, 73, 73, 73),
                  //shape:
                  //BeveledRectangleBorder(
                  //    borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},

                  label: Text(
                    'Email',
                    style: TextStyle(fontSize: 10),
                  ),
                  icon: Image.asset(
                    "/images/email.png",
                    height: 22,
                    width: 22,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
