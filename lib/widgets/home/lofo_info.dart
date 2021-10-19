import 'package:flutter/material.dart';

class LoFoItemInfo extends StatefulWidget {
  const LoFoItemInfo({Key? key}) : super(key: key);

  @override
  _LoFoItemInfoState createState() => _LoFoItemInfoState();
}

class _LoFoItemInfoState extends State<LoFoItemInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoFo Item Information'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent.withOpacity(0.1),
        foregroundColor: Colors.black,
      ),
    );
  }
}
