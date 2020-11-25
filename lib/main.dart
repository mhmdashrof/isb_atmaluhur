import 'package:flutter/material.dart';
import 'package:isb_atmaluhur/utils/constants.dart';
import 'package:isb_atmaluhur/widgets/onboarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
      home: OnBoarding(),
    );
  }
}
