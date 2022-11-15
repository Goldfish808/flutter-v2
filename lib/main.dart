import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//final numProvider = Provider((_) => 8);
// 위 프로바이더는 숫자를 저장하고 공급하는 ' 숫자 프로바이더 '

final numProvider = StateProvider((_) => 3);
//바뀔 수도 있음

// void main() {
//   runApp(MyApp());
// }

void main() {
  runApp(
    // 위젯에서 프로바이더를 사용하고 읽기위해
    // 앱 전체적으로 "ProviderScope" 위젯을 감싸줘야 합니다.
    // 여기에 프로바이더의 상태가 저장됩니다.
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: AComponent()),
          Expanded(child: BComponent()),
        ],
      ),
    );
  }
}

//소비자 : 소비자는 (Provider)에 데이터를 요청한다. 공급자는 창고에서 데이터를 꺼내서 돌려준다.
class AComponent extends ConsumerWidget {
  const AComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //소비를 한 번만 할 때에는 .read 를 사용
    // .read는 최초에 한 번만 읽음
    // 값이 변경될 일이 없고, 한 번만 읽으면 되기 때문에 .read를 사용
    //int num = ref.read(numProvider);

    int num = ref.watch(numProvider);
    // .watch는 numProvider의 값이 변경될 때마다 rebuild 됨
    // .watch는 리스너와 비슷함

    return Container(
      color: Colors.yellow,
      child: Column(
        children: [
          Text("ACompoent"),
          Expanded(
            child: Align(
              child: Text(
                "${num}",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// 서플라이어 공급자
class BComponent extends ConsumerWidget {
  const BComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          Text("BCompoent"),
          Expanded(
            child: Align(
              child: ElevatedButton(
                onPressed: () {
                  final result = ref.read(numProvider.notifier);
                  result.state = result.state + 5;
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
