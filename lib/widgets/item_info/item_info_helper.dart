import 'package:flutter/material.dart';

class ItemInfoHelper extends StatelessWidget {
  final String title;
  final String info;
  const ItemInfoHelper({Key? key, required this.title, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
        const SizedBox(height: 10,),
        Container(
          height: 50,
          width: 400,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(206, 205, 205, 1.0),
            borderRadius: BorderRadius.circular(13.0),
          ),
          child: Center(
            child: Text(info, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
          ),
        ),
        const SizedBox(height: 15,),
      ],
    );
  }
}
