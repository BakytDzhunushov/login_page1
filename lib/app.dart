import 'package:flutter/material.dart';
import 'login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 250, 150, 5)),
        //useMaterial3: true,
      ),
      home: LoginPage(), //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

