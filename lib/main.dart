import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:linkit_app/demopage.dart';
import 'package:linkit_app/dropdownbutton.dart';
import 'package:linkit_app/form.dart';
import 'package:linkit_app/page.dart';
import 'package:linkit_app/payment.dart';
import 'package:linkit_app/refreshindicator.dart';
import 'package:linkit_app/switch_two.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      //home: MyHomePage(),
      //home: PayoutPage(),
      //home: StackPage(),
      //home: StepTwoPage(),
      home: dropdownPage(),
      // home: Payment()
      //home: RefreshIndicatorExample(),
    );
  }
}
