import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/sign-up.dart';
import 'package:myapp/page-1/RecieveBG.dart';
import 'package:myapp/page-1/DonorBG.dart';
import 'package:myapp/page-1/thanks.dart';
import 'package:myapp/page-1/login.dart';
import 'package:myapp/page-1/opening-page.dart' as openingpage;
import 'package:myapp/page-1/request.dart';
import 'package:myapp/page-1/donation.dart' as donation;
import 'package:myapp/page-1/ailments.dart' as ailments;
import 'package:myapp/page-1/donors.dart';
import 'package:myapp/page-1/donors-BqN.dart';
import 'package:myapp/page-1/occupation.dart';
import 'package:myapp/page-1/hospital.dart';
import 'package:myapp/page-1/admin.dart';
import 'package:myapp/components/ob-forms-only-3-months.dart';
import 'package:myapp/components/ob-forms-name.dart';
import 'package:myapp/components/ob-forms-occupation.dart';

void main() => runApp(MyApp());

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
