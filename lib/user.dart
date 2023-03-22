import 'package:flutter/material.dart';

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  List l = ["", "", "", "", "", "", "", "", ""];
  int temp = 0;
  String t1="o";
  String t2="x";
  String msg="Game is runnig";


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
                            "${l[0]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),))),
                Expanded(
                    child: InkWell(onTap: () => (t[1] == true) ? get(1) : null,

                        child: Container(height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                          child: Text(
                              "${l[1]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold)),))),
                Expanded(
                    child: InkWell(onTap: () => (t[2] == true) ? get(2) : null,

                        child: Container(height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                          child: Text(
                            "${l[2]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),))),
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
                            "${l[3]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),))),
                Expanded(
                    child: InkWell(onTap: () => (t[4] == true) ? get(4) : null,

                        child: Container(height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                          child: Text(
                            "${l[4]}", style: TextStyle(fontSize:40,color: Colors.white,fontWeight: FontWeight.bold),),))),
                Expanded(
                    child: InkWell(onTap: () => (t[5] == true) ? get(5) : null,

                        child: Container(height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                          child: Text(
                            "${l[5]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),))),
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
                            "${l[6]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),))),
                Expanded(
                    child: InkWell(onTap: () => (t[7] == true) ? get(7) : null,

                        child: Container(height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                          child: Text(
                            "${l[7]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),))),
                Expanded(
                    child: InkWell(onTap: () => (t[8] == true) ? get(8) : null,

                        child: Container(height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color:Colors.grey.shade700,border: Border.all(width: 3,color: Colors.white)),
                          child: Text(
                            "${l[8]}", style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),))),
              ],
            ),

            ElevatedButton(onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return third();
              },));
              setState(() {

              });
            }, child: Text("Reset"))
          ],
        ),
      ),
    );
  }
  get(int pos)
  {
    setState(() {
      if(temp%2==0)
      {
        l[pos]="$t2";
        print("a");
        win();
      }
      else
      {
        l[pos]="$t1";
        print("b");
        win();
      }
      temp++;
      t[pos]=false;
    });
  }
  win()
  {
    int win=0;
    if((l[0]=="$t2" && l[1]=="$t2" && l[2]=="$t2") ||
        (l[0]=="$t2" && l[3]=="$t2" && l[6]=="$t2") ||
        (l[0]=="$t2" && l[4]=="$t2" && l[8]=="$t2") ||
        (l[1]=="$t2" && l[4]=="$t2" && l[7]=="$t2") ||
        (l[2]=="$t2" && l[4]=="$t2" && l[6]=="$t2") ||
        (l[4]=="$t2" && l[5]=="$t2" && l[3]=="$t2") ||
        (l[2]=="$t2" && l[5]=="$t2" && l[8]=="$t2") ||
        (l[8]=="$t2" && l[7]=="$t2" && l[6]=="$t2") )
    {
      msg = "$t2 is Won";
      win =1 ;
    }
    else if((l[0]=="$t1" && l[1]=="$t1" && l[2]=="$t1") ||
        (l[0]=="$t1" && l[3]=="$t1" && l[6]=="$t1") ||
        (l[1]=="$t1" && l[4]=="$t1" && l[7]=="$t1") ||
        (l[0]=="$t1" && l[4]=="$t1" && l[8]=="$t1") ||
        (l[2]=="$t1" && l[4]=="$t1" && l[6]=="$t1") ||
        (l[4]=="$t1" && l[5]=="$t1" && l[3]=="$t1") ||
        (l[2]=="$t1" && l[5]=="$t1" && l[8]=="$t1") ||
        (l[8]=="$t1" && l[7]=="$t1" && l[6]=="$t1"))
    {
      msg = "$t1 is Won";
      win = 1;
    }
    else if(win==0 && l[0]!="" && l[1]!="" && l[2]!="" && l[3]!="" && l[4]!="" && l[5]!="" && l[6]!="" && l[7]!="" && l[8]!="")
    {
      msg = "Match Draw";
    }

    if(win==1)
    {
      for(int i=0;i<9;i++)
      {
        t[i]=false;
      }
    }

  }
}


