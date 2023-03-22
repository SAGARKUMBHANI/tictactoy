import 'dart:math';

import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {

  List list = ["", "", "", "", "", "", "", "", ""];
  int temp = 0;

  List<bool> t = [true, true, true, true, true, true, true, true, true];
  String ans = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tic-Tac-Toe"),),
      body: Container(
        decoration: BoxDecoration(image:DecorationImage(fit: BoxFit.fill,image: AssetImage("images/one.jpg"))),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Container(height: 100,
                  decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                  margin: EdgeInsets.all(20),
                  child: Text("$ans", style: TextStyle(fontSize: 40,color: Colors.white),textAlign: TextAlign.center,),))
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Expanded(
                    child: InkWell(onTap: () => (t[0] == true) ? get(0) : null,

                        child: Container(height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                          child: Text(
                            "${list[0]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),))),
                Expanded(
                    child: InkWell(onTap: () => (t[1] == true) ? get(1) : null,

                        child: Container(height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                          child: Text(
                            "${list[1]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold)),))),
                Expanded(
                    child: InkWell(onTap: () => (t[2] == true) ? get(2) : null,

                        child: Container(height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                          child: Text(
                            "${list[2]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),))),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Expanded(
                    child: InkWell(onTap: () => (t[3] == true) ? get(3) : null,

                        child: Container(height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                          child: Text(
                            "${list[3]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),))),
                Expanded(
                    child: InkWell(onTap: () => (t[4] == true) ? get(4) : null,

                        child: Container(height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                          child: Text(
                            "${list[4]}", style: TextStyle(fontSize:40,color: Colors.white,fontWeight: FontWeight.bold),),))),
                Expanded(
                    child: InkWell(onTap: () => (t[5] == true) ? get(5) : null,

                        child: Container(height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                          child: Text(
                            "${list[5]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),))),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Expanded(
                    child: InkWell(onTap: () => (t[6] == true) ? get(6) : null,

                        child: Container(height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                          child: Text(
                            "${list[6]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),))),
                Expanded(
                    child: InkWell(onTap: () => (t[7] == true) ? get(7) : null,

                        child: Container(height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                          child: Text(
                            "${list[7]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),))),
                Expanded(
                    child: InkWell(onTap: () => (t[8] == true) ? get(8) : null,

                        child: Container(height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                          child: Text(
                            "${list[8]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),))),
              ],
            ),

            ElevatedButton(onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return second();
              },));
              setState(() {

              });
            }, child: Text("Reset"))
          ],
        ),
      ),
    );
  }

  get(int pos) {
    // int a=Random().nextInt(9);
    // print(a);
//
//      if(temp%2==0)
//        {
//      list[pos]="x";
//        }
//      else
//        {
// list[pos]="0";
//        }
//      temp++;
//      t[pos]=false;


    list[pos] = "x";
    while (true) {
      int a = Random().nextInt(9);
      if (list[a] == "") {
        list[a] = "0";
        break;
      }
    }
    setState(() {

    });

    if (list[0] == "0" && list[1] == "0" && list[2] == "0" ||
        list[3] == "0" && list[4] == "0" && list[5] == "0" ||
        list[6] == "0" && list[7] == "0" && list[8] == "0" ||
        list[0] == "0" && list[3] == "0" && list[6] == "0" ||
        list[1] == "0" && list[4] == "0" && list[7] == "0" ||
        list[2] == "0" && list[5] == "0" && list[8] == "0" ||
        list[0] == "0" && list[4] == "0" && list[8] == "0" ||
        list[2] == "0" && list[4] == "0" && list[6] == "0"
    ) {
      ans = "0 is win";
      for (int i = 0; i < 9; i++) {
        t[i] = false;
      }
      setState(() {

      });
    } else if (list[0] == "x" && list[1] == "0" && list[2] == "0" ||
        list[3] == "x" && list[4] == "x" && list[5] == "x" ||
        list[6] == "x" && list[7] == "x" && list[8] == "x" ||
        list[0] == "x" && list[3] == "x" && list[6] == "x" ||
        list[1] == "x" && list[4] == "x" && list[7] == "x" ||
        list[3] == "x" && list[5] == "x" && list[8] == "x" ||
        list[0] == "x" && list[4] == "x" && list[8] == "x" ||
        list[2] == "x" && list[4] == "x" && list[6] == "x"


    ) {
      ans = "x is win";
      for (int i = 0; i < 9; i++) {
        t[i] = true;
      }
      setState(() {

      });
    }
    // else {


    //   ans = "  gameover";
    // }

  }


}

