import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
   SecondPage({Key? key, this.num}) : super(key: key);

    String? num;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Secon Page",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade500,
              ),
              child: Center(
                child: Text(
                  "цифры: ${num}",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          IconButton(
              color: Colors.red,
              style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all<Color>(Color(0xff111111)),
                     ),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Center(
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 30,
                  // color: Colors.black,
                ),
              ))
        ],
      ),
    );
  }
}
