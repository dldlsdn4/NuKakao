import 'package:flutter/material.dart';
import 'package:nukakao/screens/kakao_login.dart';
import 'package:nukakao/screens/login_vm.dart';

class NakaoLogin extends StatefulWidget {
  const NakaoLogin({super.key});

  @override
  State<NakaoLogin> createState() => _NakaoLoginState();
}

class _NakaoLoginState extends State<NakaoLogin> {
  final vm = LoginVM(KakaoLogin());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 200, height: 200, color: Colors.amberAccent, child: vm.user != null ? Image.network(vm.user?.kakaoAccount?.profile?.profileImageUrl ?? "") : Container()),
            Text("isLogined? : ${vm.isLogined}"),
            Text("id : ${vm.user?.id}"),
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
            vm.isLogined
                ? ElevatedButton(
                    onPressed: () {},
                    child: const Text("push notifications"),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
