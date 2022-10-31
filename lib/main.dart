import 'package:flutter/material.dart';
import 'package:nukakao/login.dart';
import 'package:nukakao/resources/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
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
          padding: const EdgeInsets.fromLTRB(20, 5, 40, 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              width: 1,
              color: Colors.black,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(width: 50, child: Image.asset("assets/kakaoicon.png", fit: BoxFit.fill)),
              SizedBox(width: 5),
              const Text(
                "Kakao Login",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
