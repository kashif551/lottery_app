import 'package:flutter/material.dart';
// ignore: unused_import
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Random random =Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.withOpacity(.8),
          title: const Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery App is number is $x')),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  color:x == 4 ? Colors.teal : Colors.grey.withOpacity(.3),
                  borderRadius: BorderRadius.circular(20)),
              child:  Padding(
                padding:const EdgeInsets.all(15.0),
                child: x == 4 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   const Icon(
                      Icons.done,
                      color: Colors.green,
                      size: 35,
                    ),
                   const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Congratulation you have win lottery. your number is $x\n',
                      textAlign: TextAlign.center,
                    )
                  ],
                ):
                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   const Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 35,
                    ),
                   const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Better luck next time your number is $x\n  try again',
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x=random.nextInt(6);
            print(x);
            setState(() {
              
            });
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
