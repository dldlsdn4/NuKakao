import 'package:flutter/material.dart';
import 'package:nukakao/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const NakaoLogin()));
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
          color: Colors.yellowAccent,
          child: const Text(
            "Kakao Login",
            style: TextStyle(fontSize: 15),
          ),
        ),
      )),
    );
  }
}
