import 'package:flutter/material.dart';
import 'package:lofo_app/model/record.dart';
import 'package:lofo_app/widgets/home/home_page_item.dart';
import 'package:lofo_app/widgets/item_info/item_info_helper.dart';

class LoFoItemInfo extends StatefulWidget {
  final Record data;
  const LoFoItemInfo({Key? key, required this.data}) : super(key: key);
  @override
  _LoFoItemInfoState createState() => _LoFoItemInfoState();
}

class _LoFoItemInfoState extends State<LoFoItemInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoFo Information'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent.withOpacity(0.1),
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(image: NetworkImage(widget.data.image), width: 300,),
                ),
              ),
              const SizedBox(height: 20,),
              const Center(child: Text('Description', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),)),
              const SizedBox(height: 10,),
              ItemInfoHelper(title: 'Name', info: widget.data.title),
              ItemInfoHelper(title: 'Status', info: widget.data.status),
              ItemInfoHelper(title: 'Date', info: widget.data.time),
              ItemInfoHelper(title: 'Place', info: widget.data.place),
              ItemInfoHelper(title: 'Comment', info: widget.data.description),

            ],
          ),
        ),
      ),
    );
  }
}
