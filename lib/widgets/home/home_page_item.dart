import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemInfoData{
  final String name;
  final String lostOrFound;
  final String time;
  final String imageURL;

  ItemInfoData(this.name, this.lostOrFound, this.time, this.imageURL);
}

class HomePageItemWidget extends StatefulWidget {
  final ItemInfoData data;

  const HomePageItemWidget({Key? key, required this.data,}) : super(key: key);
  @override
  _HomePageItemWidgetState createState() => _HomePageItemWidgetState();
}

class _HomePageItemWidgetState extends State<HomePageItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white, // чтобы скрывать тень
              border: Border.all(color: Colors.black.withOpacity(0.2)),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(widget.data.imageURL)
                // image: NetworkImage(widget.imageURL),
              ),
            ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: 0.8,
                    child: Text(widget.data.name,
                      style: TextStyle(fontSize: 30,color: Colors.white,backgroundColor: Colors.black.withOpacity(0.5)),),
                  )
                ],
              )
          ),
          const SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow.withOpacity(0.3),
                ),
                child: Row(
                  children:  [
                    const SizedBox(width: 5,),
                    const Icon(Icons.content_paste_sharp),
                    const SizedBox(width: 5,),
                    Text(widget.data.lostOrFound,style: const TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w700
                    ),),
                    const SizedBox(width: 5,),
                  ],
                ),
              ),
              Text(widget.data.time,style: const TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w700
              ),),
            ],
          )
        ],
      ),
    );
  }
}
