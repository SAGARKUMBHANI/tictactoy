import 'package:flutter/material.dart';
import 'package:tictactoy/first.dart';

void main()
{
  runApp(MaterialApp(home: home(),));
}
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image:DecorationImage(fit: BoxFit.fill,image: AssetImage("images/one.jpg"))),
        child: Center(
              child: Column(mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return first();
                    },));
                  }, child: Text("Play Game")),
                  SizedBox(height:10),
                ],
              ),
        ),
      ),
    );
  }
}
