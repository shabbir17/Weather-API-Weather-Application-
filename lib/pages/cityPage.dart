import 'package:flutter/material.dart';

class CityPage extends StatefulWidget {
  const CityPage({Key? key}) : super(key: key);

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  TextEditingController? cityEditCtl;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    cityEditCtl = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/city_background.jpg"),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Enter Your City Name",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  controller: cityEditCtl,

                  /* onChanged: (String value){
                    print(value);
                  },*/
                ),
              ),
              TextButton(
                  onPressed: () {

                    if(cityEditCtl!.text==""){
                      print("city name required");
                    }else{
                      Navigator.pop(context, cityEditCtl!.text);
                    }

                  },
                  child: Text(
                    "Get Weather",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
