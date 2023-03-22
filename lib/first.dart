import 'package:flutter/material.dart';
import 'package:tictactoy/second.dart';
import 'package:tictactoy/user.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: BoxDecoration(image:DecorationImage(fit: BoxFit.fill,image: AssetImage("images/one.jpg"))),
        child: Center(
          child: Column(mainAxisAlignment:MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return user();
                },));
              }, child: Text("Play Friend")),
              SizedBox(height:10),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return second();
                },));
              }, child: Text("Play Computer")),
            ],
          ),
        ),
      ),
    );
  }
}
