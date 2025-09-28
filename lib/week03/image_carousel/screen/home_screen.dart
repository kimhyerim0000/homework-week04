import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

// StatefulWidget 정의
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
// _HomeScreenState 정의 
class _HomeScreenState extends State<HomeScreen> {
  // PageController 생성
  final PageController pageController = PageController();

  // initState() 함수 등록
  @override
  void initState() {
    super.initState();

    Timer.periodic(
      Duration(seconds: 3),
    (timer) {
      // 현재 페이지 가져오기
      int? nextPage = pageController.page?.toInt();

      if (nextPage == null) {
        return;
      }
      if (nextPage == 4) {
        nextPage = 0;
      } else {
        nextPage++;
      }
      pageController.animateToPage(
        nextPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    // 상태바 색상 변경
    // 상태바가 이미 흰색이면 light 대신 dark를 주어 검정으로 바꾸세요.
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [1,2,3,4,5]
         .map(
        (number) => Image.asset(
          'asset/img/image_$number.jpeg',
          fit: BoxFit.cover,
          ),
         )
         .toList(),
      )
    );
  }
}