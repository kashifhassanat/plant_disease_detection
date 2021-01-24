import 'package:flutter/material.dart';
import 'package:plant_disease_detection/app/signin/default_page.dart';

import 'app/screens/faq.dart';
import 'app/screens/homescreen.dart';
import 'app/services/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    WidgetsApp.debugAllowBannerOverride=false; 
    return MaterialApp(
  home: DefaultPage(auth: Auth(),),
    );
}
} 