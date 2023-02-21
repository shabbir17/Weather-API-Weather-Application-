import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() {
    print("Create State called");
    return _Page2State();
  }
}


class _Page2State extends State<Page2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(" init state called");
  }


  @override
  void didUpdateWidget(covariant Page2 oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("did updateWidget called");
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactive called");
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose called");
  }

  @override
  Widget build(BuildContext context) {
    print("build called");
    String buttonName="Page  two";
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: TextButton(
            child: Text(buttonName,style: TextStyle(fontSize: 45),),
            onPressed: (){
              setState(() {
                print("pressed");
                buttonName="page 2";
              });
            },
          )
        ),
      ),
    );
  }
}
