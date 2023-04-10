import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const LotteryApp());
}

class LotteryApp extends StatefulWidget {
  const LotteryApp({Key? key}) : super(key: key);

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  Random randomNum = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Text(
              "Lottery winning number is: 6 ",
              style: TextStyle(fontSize: 20),
            )),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 290,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12)),
              child: x == 6
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.done_all,
                          size: 30,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Text(
                            "Congratulation! You have won the lottery,\n your number is $x ",
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: Text(
                                "Better luck next time! You answer is $x,\n Try Again! ",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 20,
                                )),
                          ),
                        ],
                      ),
                    ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = randomNum.nextInt(10);
            setState(() {});
          },
          child: const Icon(
            Icons.refresh,
            size: 30,
          ),
        ),
      ),
    );
  }
}
