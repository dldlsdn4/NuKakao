import 'package:flutter/material.dart';

class NakaoLogin extends StatefulWidget {
  const NakaoLogin({super.key});

  @override
  State<NakaoLogin> createState() => _NakaoLoginState();
}

class _NakaoLoginState extends State<NakaoLogin> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "Nukao login page",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
