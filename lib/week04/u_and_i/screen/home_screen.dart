import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          // 위아래 끝에 위젯 배치
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // 반대축 최대 크기로 늘리기
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _DDay(),
            _CoupleImage(),
          ],
        )
      )
    );
  }
}

class _DDay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('DDay Widget');
  }
}

class _CoupleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'asset/img/middle_image.png',

        // 화면의 반만큼 높이 구현
        height: MediaQuery.of(context).size.height / 2,
      )
    );
  }
}