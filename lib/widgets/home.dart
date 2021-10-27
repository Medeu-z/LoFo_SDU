import 'package:flutter/material.dart';
import 'package:lofo_app/widgets/profile/profile_page.dart';

import 'add_item/add_item_page.dart';
import 'home/home_page.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  String actionBarTitle = 'Lost and Found Items';
  static const textStyle = TextStyle(color: Colors.grey);
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePageWidget(),
    AddItemPageWidget(),
    ProfilePageWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      updateActionBarTitle(index);
    });
  }

  void updateActionBarTitle(int index){
    if(index == 0){
      actionBarTitle = 'Lost and Found Items';
    } else if(index == 1){
      actionBarTitle = 'Add Item';
    } else{
      actionBarTitle = 'My Profile';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(actionBarTitle, style: const TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent.withOpacity(0.1),//white
        foregroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: textStyle,
        onTap: _onItemTapped,
      ),
    );
  }
}



