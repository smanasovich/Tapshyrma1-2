import 'package:flutter/material.dart';

class EkinchiBet extends StatelessWidget {
  const EkinchiBet({Key key, this.kelgenSan}) : super(key: key);
  final int kelgenSan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          //color: Color(0xff46F3F3),
          width: 294.0,
          height: 48.0,
          decoration: BoxDecoration(
              color: Colors.white,
              //border: Border.all(
              //    color: Colors.red[500],
              //  ),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Center(
            child: Center(
              child: Text(
                'сан: ${kelgenSan.toString()}',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
