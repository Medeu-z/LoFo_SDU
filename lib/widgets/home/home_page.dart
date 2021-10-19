import 'package:flutter/material.dart';
import 'home_page_item.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final List<ItemInfoData> dataSet = [
    ItemInfoData('Airpods 2', 'Found', 'Today','assets/image/airpods_on_hand.png'),
    ItemInfoData('Macbook Air', 'Lost', '3 days ago','assets/image/macbookAir.jpg'),
    ItemInfoData('Qazaq Republic Somke', 'Lost', '1 day ago','assets/image/qrSomke.jpg'),
    ItemInfoData('Acer Nitro 5', 'Found', 'Today','assets/image/acerNitro.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueAccent.withOpacity(0.1),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: dataSet.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed('/item_information');
                },
                child: HomePageItemWidget(data: dataSet[index],)
            );
          }
        )
    );
  }
}
