import 'package:flutter/material.dart';
import 'package:fruit_hub/widget/home/homeWidget.dart';
import 'package:fruit_hub/widget/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  ConfigComponent createState() => ConfigComponent();
}

// widget config component
class ConfigComponent extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit Hub',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        // login page
        '/login': (context) => ContainerLogin(),
      },
    );
  }
}
