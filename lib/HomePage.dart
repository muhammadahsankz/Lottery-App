import 'package:flutter/material.dart' ;
import 'dart:math';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int x = 0;
  Random random = Random();
   

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          Text('Lottery wining number is: 3',
          style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 50),
          Center(
            child: x == 3 ? Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(.5),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Icon(Icons.done_all,
                color: Colors.green,
                size: 40,),
            Text('Congratulations\nYou have Won the Lottery\nYour number is: $x', 
            textAlign: TextAlign.center,),
              ]),
            ) : Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(.5),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Icon(Icons.dangerous_outlined,
                color: Colors.red,
                size: 40,),
            Text('Better luck next time\nYour number is: $x\nTry Again', 
            textAlign: TextAlign.center,),
              ]),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: (){
          x = random.nextInt(5) + 1;
          setState(() {});
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}