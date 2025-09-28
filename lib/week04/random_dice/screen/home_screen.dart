import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  DateTime firstDay = DateTime.now();
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
    // 테마 불러오기
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        const SizedBox(height: 16.0),
        Text(
          'U&I',
          style: textTheme.headlineLarge, // headline1 스타일 적용용
        ),
        const SizedBox(height: 16.0),
        Text(
          '우리 처음 만난 날',
          style: textTheme.bodyMedium, // bodyText1 스타일 적용
        ),
        Text(
          '2021.11.23',
          style: textTheme.bodyLarge, // bodyText2 스타일 적용
        ),
        const SizedBox(height: 16.0),
        IconButton(
          iconSize: 60.0,
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            color: Colors.red,  // 색상 빨강으로 변경경
          ),
        ),
        const SizedBox(height: 16.0),
        Text(
          'D+365',
          // headline2 스타일 적용
          style: textTheme.headlineMedium,
        ),
      ],
    );
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