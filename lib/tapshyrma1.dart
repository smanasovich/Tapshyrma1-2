import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tikeme1/ekinchi_bet.dart';

class Tapshyrma1 extends StatefulWidget {
  const Tapshyrma1({Key key}) : super(key: key);

  @override
  State<Tapshyrma1> createState() => _Tapshyrma1State();
}

class _Tapshyrma1State extends State<Tapshyrma1> {
  int _counter = 4;
  void _decrement() {
    setState(() {
      if (_counter == 0) {
        _counter++;
      }
      _counter--;
    });
  }

  void _increment() {
    setState(() {
      //Uzun formasy
      // _counter = _counter + 2;
      //Kyska formasy
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        title: const Center(
            child: Text(
          'Тапшырма 01',
          style: TextStyle(
              fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w600),
        )),
        elevation: 0,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => EkinchiBet(
                        kelgenSan: _counter,
                      ))),
          child: Container(
            //color: Color(0xff46F3F3),
            width: 294.0,
            height: 48.0,
            decoration: BoxDecoration(
                color: Color(0xff46F3F3),
                //border: Border.all(
                //    color: Colors.red[500],
                //  ),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Center(
              child: Text(
                'сан: $_counter',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                _decrement();
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff005EA6),
                    borderRadius: BorderRadius.circular(10)),
                width: 69.0,
                height: 44.0,
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _increment();
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff005EA6),
                    borderRadius: BorderRadius.circular(10)),
                width: 69.0,
                height: 44.0,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
