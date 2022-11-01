import 'package:flutter/material.dart';
import 'package:nukakao/kakao_login.dart';
import 'package:nukakao/main_vm.dart';

class NakaoLogin extends StatefulWidget {
  const NakaoLogin({super.key});

  @override
  State<NakaoLogin> createState() => _NakaoLoginState();
}

class _NakaoLoginState extends State<NakaoLogin> {
  final vm = LoginVM(KakaoLogin());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(vm.user?.kakaoAccount?.profile?.profileImageUrl ?? ""),
          Text("${vm.isLogined}"),
          ElevatedButton(
              onPressed: () async {
                await vm.login();
                setState(() {});
              },
              child: const Text("Login")),
          ElevatedButton(
              onPressed: () async {
                await vm.logout();
                setState(() {});
              },
              child: const Text("Logout")),
        ],
      ),
    );
  }
}
