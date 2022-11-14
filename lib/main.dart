import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Row(
        children: [
          Expanded(child: ABPage()),
          Expanded(child: CComponent()),
        ],
      ),
    );
  }
}

class ABPage extends StatefulWidget {
  const ABPage({Key? key}) : super(key: key);

  @override
  State<ABPage> createState() => _ABPageState();
}

class _ABPageState extends State<ABPage> {
  int num = 1; // 상태를 가지는 변수는 StateFul 에서는 final 없이 사용 가능

  void increase() {
    //num 값을 증가시킬거임 num++만하면 re build 가 안됨
    //아래의 setState 로 num 값 ( 상태변수 ) 바꿀거임
    setState(() {
      //값이 변경되면서 , 아래의 build 가 다시 실행 됨
      num++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    double screenSize = size * 0.8;
    return Scaffold(
      body: Container(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: AComponent(num)),
            Expanded(child: BComponent(increase)),
          ],
        ),
      ),
    );
  }
}

class CComponent extends StatelessWidget {
  const CComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text("data")],
      ),
      color: Colors.indigo,
    );
  }
}

class AComponent extends StatelessWidget {
  const AComponent(this.num, {Key? key}) : super(key: key);
  final int num;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        children: [
          Text("ACompoent"),
          Expanded(
            child: Align(
              child: Text(
                "$num",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BComponent extends StatelessWidget {
  const BComponent(this.increase, {Key? key}) : super(key: key);
  final increase;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          Text("BCompoent"),
          Expanded(
            child: Align(
              child: ElevatedButton(
                onPressed: () {
                  increase();
                },
                child: Text(
                  "숫자증가",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
