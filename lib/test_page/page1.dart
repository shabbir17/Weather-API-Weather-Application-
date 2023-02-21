import 'package:flutter/material.dart';
import 'package:weather/test_page/page2.dart';
class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: TextButton(
            child: Text("Button",style: TextStyle(fontSize: 45),),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Page2()));
            },
          ),
        ),
      ),
    );
  }
}
