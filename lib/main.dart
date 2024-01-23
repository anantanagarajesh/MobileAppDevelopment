import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

import 'package:myapp/page-1/sign-up.dart';
import 'package:myapp/page-1/proper-button.dart';
import 'package:myapp/page-1/blood-group.dart';
import 'package:myapp/page-1/blood-group-moS.dart';
import 'package:myapp/page-1/thanks.dart';
import 'package:myapp/page-1/login.dart';
import 'package:myapp/page-1/group-43.dart';
import 'package:myapp/page-1/opening-page.dart' as openingpage;
import 'package:myapp/page-1/request.dart';
import 'package:myapp/page-1/save.dart' as save;
import 'package:myapp/page-1/donation.dart' as donation;
import 'package:myapp/page-1/ailments.dart' as ailments;
import 'package:myapp/page-1/o.dart';
import 'package:myapp/page-1/a.dart';
import 'package:myapp/page-1/donors.dart';
import 'package:myapp/page-1/donors-BqN.dart';
import 'package:myapp/page-1/component-2.dart';
import 'package:myapp/page-1/occupation.dart';
import 'package:myapp/page-1/occupation-F88.dart';
import 'package:myapp/page-1/hospital.dart';
import 'package:myapp/page-1/frame-46.dart';
import 'package:myapp/page-1/admin.dart';
import 'package:myapp/page-1/frame-54.dart';
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
