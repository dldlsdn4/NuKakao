# NuKakao

kakao login + kakao push notification

# 목표

kakao 로그인 구현 및 정리.

kakao push 알림 구현 및 정리.

# 정리

git pull origin branchname --allow-unrelated-histories

ㄴ 관련 없는 히스토리까지 모두 pull하는 행위

# 앱키

네이티브 앱 키       07ea8b5dfa48d24cbe5acef8da0cc1ed
REST API 키	        6538c8b666a58acdfa58965e09c08326
JavaScript 키	    7959bad4670305cb15b6bbb394d9e832
Admin 키	        9af21da10ac7a33a668a810a809bb7ae

# 구조

lib/
|- resources
|  |_ app_color.dart
|  |_ app_theme.dart
|
|- screen
|  |_ kakao_login.dart
|  |_ login.dart
|  |_ login_vm.dart
|
|_ social_login.dart
|_ main.dart