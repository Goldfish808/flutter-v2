import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Container(
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text("Login", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 3.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey, width: 3.0),
                      ),
                    ),
                    style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                  ),
                  SizedBox(height: 30),
                  Text("Password", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 3.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey, width: 3.0),
                      ),
                    ),
                    style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                  ),
                  Container(
                    child: buildBuyButton(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
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
              Text("Buy", style: TextStyle(color: Colors.white, fontSize: 42)),
        ),
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.zero,
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
                "Welcome",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
