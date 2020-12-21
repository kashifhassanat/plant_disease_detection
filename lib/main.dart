import 'package:flutter/material.dart';

import 'package:plant_disease_detection/app/signin/default_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    WidgetsApp.debugAllowBannerOverride=false; 
    return MaterialApp(
  home: DefaultPage(),
    );
}
} 