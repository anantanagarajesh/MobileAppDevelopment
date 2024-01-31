import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/firebase_options.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/sign-up.dart';
import 'package:myapp/page-1/RecieveBG.dart';
import 'package:myapp/page-1/DonorBG.dart';
import 'package:myapp/page-1/thanks.dart';
import 'package:myapp/page-1/login.dart';
import 'package:myapp/page-1/opening-page.dart' as openingpage;
import 'package:myapp/page-1/request.dart';
import 'package:myapp/page-1/DonationPage.dart';
import 'package:myapp/page-1/ailments.dart';
import 'package:myapp/page-1/donors.dart';
import 'package:myapp/page-1/donors-BqN.dart';
import 'package:myapp/page-1/Requestdetails.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  try {
    await Firebase.initializeApp();
    print("Firebase initialized successfully");
  } catch (e) {
    print("Error initializing Firebase: $e");
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: openingpage.Scene(),
        ),
      ),
    );
  }
}
