import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePageWidget extends StatefulWidget {
  const ProfilePageWidget({Key? key}) : super(key: key);

  @override
  _ProfilePageWidgetState createState() => _ProfilePageWidgetState();
}

class _ProfilePageWidgetState extends State<ProfilePageWidget> {
  var _lights = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26,vertical: 20),
      child: Column(
        children:  [
          Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/image/avatarImage.png'),
                  fit: BoxFit.fill
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Text('Bissenbay Dauletbayev', style: TextStyle(fontSize: 20),),
          const SizedBox(height: 5,),
          Text('+7 777 000 13 13', style: TextStyle(fontSize: 13),),
          const SizedBox(height: 30,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black)
            ),
            child: Row(
              children: [
                const SizedBox(width: 10,),
                Expanded(child: Text('NOTIFICATIONS', style: TextStyle(fontSize: 18,letterSpacing: 1.1),),),
                Transform.scale(
                  scale: 0.8,
                  child: CupertinoSwitch(
                    value: _lights,
                    onChanged: (bool value) { setState(() { _lights = value; }); },
                    activeColor: Colors.black,
                  ),
                ),

              ],
            ),
          ),
          const SizedBox(height: 30,),
          Row(
            children: const [
              Icon(Icons.change_circle),
              SizedBox(width: 5,),
              Expanded(child: Text('Change personal data', style: TextStyle(fontSize: 20),)),
              Icon(Icons.chevron_right)
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(),
          ),
          Row(
            children: const [
              Icon(Icons.phone),
              SizedBox(width: 5,),
              Expanded(child: Text('Phone number', style: TextStyle(fontSize: 20),)),
              Icon(Icons.chevron_right)
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(),
          ),
          Row(
            children: const [
              Icon(Icons.password),
              SizedBox(width: 5,),
              Expanded(child: Text('Change password', style: TextStyle(fontSize: 20),)),
              Icon(Icons.chevron_right)
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(),
          ),
          Row(
            children: const [
              Icon(Icons.delete_outline),
              SizedBox(width: 5,),
              Expanded(child: Text('Delete my account', style: TextStyle(fontSize: 20),)),
              Icon(Icons.chevron_right)
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(),
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Row(
              children: const [
                Icon(Icons.exit_to_app),
                SizedBox(width: 5,),
                Expanded(child: Text('Exit', style: TextStyle(fontSize: 20),)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
