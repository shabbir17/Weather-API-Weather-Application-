
import 'package:flutter/material.dart';
class Page3 extends StatefulWidget {

  String? data;
    Page3({this.data,Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){return Page3();}));
          },
          child: Text(widget.data!),
        ),
      ),
    );
  }
}
