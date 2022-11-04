import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:nukakao/social_login.dart';

class LoginVM {
  final SocialLogin _socialLogin;
  bool isLogined = false;
  User? user;

  LoginVM(this._socialLogin);

  Future login() async {
    isLogined = await _socialLogin.login();
    if (isLogined) {
      try {
        user = await UserApi.instance.me();
        print('사용자 정보 요청 성공'
            '\n회원번호: ${user?.id}'
            '\n닉네임: ${user?.kakaoAccount?.profile?.nickname}');
      } catch (error) {
        print('사용자 정보 요청 실패 $error');
      }
    }
  }

  Future logout() async {
    await _socialLogin.logout();
    isLogined = false;
    user = null;
  }
}
