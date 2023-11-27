import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random=Random();
  int x= 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child:
              Text(
                  'Lottery App'
              )
          ),

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'The lottery winning number is 4 \n Press the Button to get a number assigned',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(left: 40,right: 40),
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.4)
                ),
                child: x==4
                    ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.done_all_outlined, color: Colors.green,size: 35,),
                    SizedBox(height: 10,),
                    Text(
                        'Congratulations!!!! \n You Won, As your Number was $x',
                      textAlign: TextAlign.center,

                    )
                  ],
                ) //winning_condition
                    :
                Column(
                  children: [
                    Icon(Icons.error, color: Colors.red,size: 35,),
                    SizedBox(height: 10,),
                    Text(
                        'Better Luck Next Time, Your Number Was $x \n Try Again?',
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x= random.nextInt(5);
            setState(() {});
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}

