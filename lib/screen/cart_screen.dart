import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(children: [
        Column(
          children: [
            SizedBox(height: 80),
            buildItem(),
            SizedBox(height: 80),
            buildBuyButton()
          ],
        ),
      ]),
    );
  }

  Widget buildItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 180,
          height: 50,
          child: Container(
            color: Colors.blue,
          ),
        ),
        SizedBox(width: 20),
        Text("\$42", style: TextStyle(fontSize: 42))
      ],
    );
  }

  Widget buildBuyButton() {
    return InkWell(
      onTap: () {
        print("클릭됨");
      },
      child: Container(
        width: 270,
        height: 60,
        child: Align(
          child:
              Text("Buy", style: TextStyle(color: Colors.blue, fontSize: 42)),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.zero,
          border: Border.all(width: 3, color: Colors.blue), // 박스 두께, 색
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xff3860c4),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Cart",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
