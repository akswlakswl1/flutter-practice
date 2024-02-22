import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'app Name',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
      useMaterial3: true,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('tit111le'),
        //저장된 ThemeColor를 불러와서 적용
        backgroundColor: ThemeData().colorScheme.primary,
      ),
      body: MakeRow(),
    ),
  ));
}

//2. 상하 좌우 배치해보기
//Row는 children을 가진다.
//Column을 컨테이너로 감싸고 Child에 Row를 사용하면 수평

class MakeRow extends StatelessWidget {
  const MakeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.yellow,
      child: Row(

        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //시작점
        crossAxisAlignment: CrossAxisAlignment.center, //세로
        children: [
          Container(
            width: 20,
            height: 20,
            color: Colors.green,
          ),
          Container(
            width: 10,
            height: 10,
            color: Colors.blue,
            child: Center(child: Text('Container2')),
          ),
        ],
      ),
    );
  }
}

//1. Column 사용해보기
//Column 은 children을 가진다.
//수직으로 사용 가능
class MakeColumn extends StatelessWidget {
  const MakeColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround, //시작 위치
      crossAxisAlignment: CrossAxisAlignment.stretch, //가로
      children: [
        Container(
          // width: 200,
          height: 600,
          color: Colors.red,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: Center(child: Text('Container2')),
        ),
        Container(
          width: 100,
          height: 80,
          color: Colors.amber,
          child: Text('Container3'),
        ),
      ],
    );
  }
}
