import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: prectice(),
    debugShowCheckedModeBanner: false,
  ));
}

class prectice extends StatefulWidget {
  const prectice({Key? key}) : super(key: key);

  @override
  State<prectice> createState() => _precticeState();
}

class _precticeState extends State<prectice> {
  List l = ["","","","","","","","",""];
  List<bool> b = [true,true,true,true,true,true,true,true,true];
  String s="RUNNING...";
  int cnt=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Expanded(
            child: Container(margin: EdgeInsets.all(5),
              color: Colors.black,
              child: Column(children: [
                Container(height: 100,width: double.infinity,child: Row(children: [
                  Expanded(flex: 5,child: Container(child: Text("$s",style: TextStyle(color: Colors.red,fontSize: 30),),alignment: Alignment.center,margin: EdgeInsets.all(8),decoration: BoxDecoration(color: Colors.black,boxShadow: [BoxShadow(color: Colors.red,offset: Offset(4,6),blurRadius: 8,)],borderRadius: BorderRadius.circular(10)),)),
                  Expanded(child: Container(margin: EdgeInsets.all(8),height: 100,decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.red,offset: Offset(4,6),blurRadius: 8,)]),child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.black ),onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return prectice();
                    },));
                  },
                      child: Icon(Icons.restart_alt,color: Colors.red,)))),
                ],),),
                Expanded(child: Container(child:
                Row(children: [
                  Expanded(child: InkWell(onTap: () => b[0]==true?myfun(0):null,child: Container(alignment: Alignment.center,height: double.infinity,margin: EdgeInsets.all(8),decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.red,offset: Offset(4,6),blurRadius: 8,)],color: Colors.black,borderRadius: BorderRadius.circular(10)),child: Text("${l[0]}",style: TextStyle(fontSize: 50,color: Colors.red,fontStyle: FontStyle.italic),),)),),
                  Expanded(child: InkWell(onTap: () => b[1]==true?myfun(1):null,child: Container(alignment: Alignment.center,height: double.infinity,margin: EdgeInsets.all(8),decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.red,offset: Offset(4,6),blurRadius: 8,)],color: Colors.black,borderRadius: BorderRadius.circular(10)),child: Text("${l[1]}",style: TextStyle(fontSize: 50,color: Colors.red,fontStyle: FontStyle.italic),),)),),
                  Expanded(child: InkWell(onTap: () => b[2]==true?myfun(2):null,child: Container(alignment: Alignment.center,height: double.infinity,margin: EdgeInsets.all(8),decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.red,offset: Offset(4,6),blurRadius: 8,)],color: Colors.black,borderRadius: BorderRadius.circular(10)),child: Text("${l[2]}",style: TextStyle(fontSize: 50,color: Colors.red,fontStyle: FontStyle.italic),),)),),
                ],),)),
                Expanded(child: Container(child:
                Row(children: [
                  Expanded(child: InkWell(onTap: () => b[3]==true?myfun(3):null,child: Container(alignment: Alignment.center,height: double.infinity,margin: EdgeInsets.all(8),decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.red,offset: Offset(4,6),blurRadius: 8,)],color: Colors.black,borderRadius: BorderRadius.circular(10)),child: Text("${l[3]}",style: TextStyle(fontSize: 50,color: Colors.red,fontStyle: FontStyle.italic),),)),),
                  Expanded(child: InkWell(onTap: () => b[4]==true?myfun(4):null,child: Container(alignment: Alignment.center,height: double.infinity,margin: EdgeInsets.all(8),decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.red,offset: Offset(4,6),blurRadius: 8,)],color: Colors.black,borderRadius: BorderRadius.circular(10)),child: Text("${l[4]}",style: TextStyle(fontSize: 50,color: Colors.red,fontStyle: FontStyle.italic),),)),),
                  Expanded(child: InkWell(onTap: () => b[5]==true?myfun(5):null,child: Container(alignment: Alignment.center,height: double.infinity,margin: EdgeInsets.all(8),decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.red,offset: Offset(4,6),blurRadius: 8,)],color: Colors.black,borderRadius: BorderRadius.circular(10)),child: Text("${l[5]}",style: TextStyle(fontSize: 50,color: Colors.red,fontStyle: FontStyle.italic),),)),),
                ],),)),
                Expanded(child: Container(child:
                Row(children: [
                  Expanded(child: InkWell(onTap: () => b[6]==true?myfun(6):null,child: Container(alignment: Alignment.center,height: double.infinity,margin: EdgeInsets.all(8),decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.red,offset: Offset(4,6),blurRadius: 8,)],color: Colors.black,borderRadius: BorderRadius.circular(10)),child: Text("${l[6]}",style: TextStyle(fontSize: 50,color: Colors.red,fontStyle: FontStyle.italic),),)),),
                  Expanded(child: InkWell(onTap: () => b[7]==true?myfun(7):null,child: Container(alignment: Alignment.center,height: double.infinity,margin: EdgeInsets.all(8),decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.red,offset: Offset(4,6),blurRadius: 8,)],color: Colors.black,borderRadius: BorderRadius.circular(10)),child: Text("${l[7]}",style: TextStyle(fontSize: 50,color: Colors.red,fontStyle: FontStyle.italic),),)),),
                  Expanded(child: InkWell(onTap: () => b[8]==true?myfun(8):null,child: Container(alignment: Alignment.center,height: double.infinity,margin: EdgeInsets.all(8),decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.red,offset: Offset(4,6),blurRadius: 8,)],color: Colors.black,borderRadius: BorderRadius.circular(10)),child: Text("${l[8]}",style: TextStyle(fontSize: 50,color: Colors.red,fontStyle: FontStyle.italic),),)),),
                ],),)),
              ],),
            )),
      ),
    );
  }
  myfun(int a)
  {
    setState(() {
      b[a]=false;
      if(cnt%2==0)
      {
        l[a]="O";
      }
      else
      {
        l[a]="X";
      }
      cnt++;
      win(l[0],l[1],l[2],"O");
      win(l[3],l[4],l[5],"O");
      win(l[6],l[7],l[8],"O");
      win(l[0],l[3],l[6],"O");
      win(l[1],l[4],l[7],"O");
      win(l[2],l[5],l[8],"O");
      win(l[0],l[4],l[8],"O");
      win(l[2],l[4],l[6],"O");

      win(l[0],l[1],l[2],"X");
      win(l[3],l[4],l[5],"X");
      win(l[6],l[7],l[8],"X");
      win(l[0],l[3],l[6],"X");
      win(l[1],l[4],l[7],"X");
      win(l[2],l[5],l[8],"X");
      win(l[0],l[4],l[8],"X");
      win(l[2],l[4],l[6],"X");

    });
  }
  win(String a,String b1,String c,String d)
  {
    if(a==d && a==b1 && a==c) {
      print("$d is Win");

      b[0] = false;
      b[1] = false;
      b[2] = false;
      b[3] = false;
      b[4] = false;
      b[5] = false;
      b[6] = false;
      b[7] = false;
      b[8] = false;

      s = "Player ${d} Win";
      setState(() {});
    }
    if(cnt==9)
      {
           s="Game is Dro";

      }
  }
}
