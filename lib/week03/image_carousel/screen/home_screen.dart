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
class _HomeScreenState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // 상태바 색상 변경
    // 상태바가 이미 흰색이면 light 대신 dark를 주어 검정으로 바꾸세요.
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: PageView(
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