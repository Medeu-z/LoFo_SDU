import 'package:flutter/material.dart';

class TopListviewWidget extends StatelessWidget {
  const TopListviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(width: 16,),
          Container(
            height: 43,
            alignment: Alignment.center,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('All',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),),
            ),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(999)),
                color: Color.fromRGBO(214, 214, 214, 0.8)
            ),
          ),
          const SizedBox(width: 8,),
          Container(
            height: 43,
            alignment: Alignment.center,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Mobile',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),),
            ),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(999)),
                color: Color.fromRGBO(214, 214, 214, 0.8)
            ),
          ),
          const SizedBox(width: 8,),
          Container(
            height: 43,
            alignment: Alignment.center,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Documents',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),),
            ),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(999)),
                color: Color.fromRGBO(214, 214, 214, 0.8)
            ),
          ),
          const SizedBox(width: 8,),
          Container(
            height: 43,
            alignment: Alignment.center,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Laptop',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),),
            ),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(999)),
                color: Color.fromRGBO(214, 214, 214, 0.8)
            ),
          ),
          const SizedBox(width: 8,),
          Container(
            height: 43,
            alignment: Alignment.center,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Other',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),),
            ),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(999)),
                color: Color.fromRGBO(214, 214, 214, 0.8)
            ),
          ),
          const SizedBox(width: 8,),
        ],
      ),
    );
  }
}
