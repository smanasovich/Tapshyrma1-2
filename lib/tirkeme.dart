import 'package:flutter/material.dart';
import 'package:tikeme1/counter.dart';
import 'package:tikeme1/statefull_sabak.dart';
import 'package:tikeme1/tapshyrma1.dart';

import 'tirkeme_bir.dart';

class Tirkeme extends StatelessWidget {
  const Tirkeme({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Tapshyrma1(),
    );
  }
}
