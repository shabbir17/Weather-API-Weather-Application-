
import 'package:flutter/material.dart';
import 'package:weather/testing/page2.dart';

 class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  String data= "secret data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){return Page2(data:data);}));
          },
          child: Text("Goto Page2"),
        ),
      ),
    );
  }
}
