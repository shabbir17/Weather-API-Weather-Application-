import 'package:flutter/material.dart';
import 'package:weather/testing/page3.dart';

class Page2 extends StatefulWidget {
  String? data;

  Page2({this.data, Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Page3(data: widget.data);
            }));
          },
          child: Text("Goto Page3"),
        ),
      ),
    );
  }
}
