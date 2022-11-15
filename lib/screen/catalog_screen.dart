import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              buildItem(Colors.lightBlue),
              SizedBox(height: 20),
              buildItem(Colors.blue),
              SizedBox(height: 20),
              buildItem(Colors.red),
              SizedBox(height: 20),
              buildItem(Colors.orange),
              SizedBox(height: 20),
              buildItem(Colors.amber),
              SizedBox(height: 20),
              buildItem(Colors.yellow),
            ],
          )
        ],
      ),
    );
  }

  Widget buildItem(MaterialColor text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 220,
          height: 80,
          child: Container(
            color: text,
          ),
        ),
        SizedBox(width: 20),
        InkWell(
          onTap: () {
            print("클릭됨");
          },
          child: Container(
            child: Align(
              child: Text("Add", style: TextStyle(fontSize: 42)),
            ),
          ),
        )
      ],
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: Color(0xff3860c4),
      leading: Icon(Icons.menu_rounded, size: 40),
      actions: [
        Container(
          width: 80,
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            icon: Icon(Icons.shopping_cart, size: 40),
          ),
        )
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Catalog",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
