import 'package:flutter/material.dart';
import 'package:github_user/models/network.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
    static final String id = 'home_page';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = '';

  
  githubUser(){
    NetWork.GET(NetWork.API,NetWork.paramsGet())
        .then((response) => {
          print(response),
          showRes(response)
    });
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    githubUser();
  }
  
  showRes(String response){
    setState(() {
      data = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Text(data == '' ? "No data":data ),
        ),
      ),
    );
  }
}
