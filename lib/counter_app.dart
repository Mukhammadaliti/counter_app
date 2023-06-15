import 'dart:developer';

import 'package:counter_app/second_page.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int num = 20;
  void plus() {
    setState(() {
      num++;
    });
  }

  void minus() {
    num--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          "First Screen",
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey,
              ),
              height: 50,
              width: 200,
              child: Center(
                  child: Text(
                'цифры: $num',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    minus();
                    log("Кнопка работает ====>");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    width: 120,
                    height: 60,
                    child: Center(
                        child: Text(
                      "-",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 120,
                  height: 60,
                  child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            // side: BorderSide(color: Colors.red),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {
                        plus();
                      },
                      child: Icon(
                        Icons.add,
                        size: 50,
                        color: Colors.white,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondPage(
                              num: num.toString(),
                            )));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.09,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.blue,
                ),
                child: Icon(Icons.skip_next),
              ),
            )
          ],
        ),
      ),
    );
  }
}
